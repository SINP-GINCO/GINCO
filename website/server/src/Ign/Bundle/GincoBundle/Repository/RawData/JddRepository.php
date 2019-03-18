<?php
namespace Ign\Bundle\GincoBundle\Repository\RawData;

use Doctrine\ORM\EntityRepository;
use Ign\Bundle\GincoBundle\Entity\Website\Provider;
use Ign\Bundle\GincoBundle\Entity\Website\User;
use Ign\Bundle\GincoBundle\Entity\RawData\JddField;

/**
 * JddRepository
 *
 */
class JddRepository extends EntityRepository  {

	/**
	 * Get the active jdd (ie not 'deleted').
	 * Optionnaly filter by provider and/or user
	 *
	 * @param Provider|null $provider
	 * @param User|null $user
	 * @return array
	 */
	public function getActiveJdds(Provider $provider = null, User $user = null) {

		$dql = "SELECT j FROM IgnGincoBundle:RawData\Jdd j WHERE j.status NOT IN ('deleted')";
		$dql .= ($provider != null) ? " AND j.provider = :provider " : "";
		$dql .= ($user != null) ? " AND j.user = :user " : "";
		$dql .= " ORDER BY j.createdAt DESC";

		$query = $this->getEntityManager()->createQuery($dql);

		if ($provider != null) {
			$query->setParameter('provider', $provider);
		}
		if ($user != null) {
			$query->setParameter('user', $user);
		}
		return $query->getResult();
	}

	/**
	 * Find Jdd by Field value
	 *
	 * @param array $criteria
	 * @param array|null $orderBy
	 * @param null $limit
	 * @param null $offset
	 * @return array
	 */
	public function findByField(array $criteria, array $orderBy = null, $limit = null, $offset = null)
	{
		$qb = $this->createQueryBuilder('j')
			->where('j.status != :status')
			->setParameter('status', 'deleted')
			->join('j.fields', 'f');
			// add criterias to the request
			foreach ($criteria as $key => $value) {
				$qb->andWhere('f.key = :key')
				->andWhere('(f.valueString = :valueStr OR f.valueText = :valueStr OR f.valueInteger = :valueInt OR f.valueFloat = :valueFloat)')
				->setParameter('key', $key)
				->setParameter('valueStr', (string) $value)
				->setParameter('valueInt', intval($value))
				->setParameter('valueFloat', floatval($value));
			}

		// Add order by
		foreach ((array) $orderBy as $orderKey => $direction) {
			$qb->addOrderBy('j.'.$orderKey, $direction);
		}

		if ($limit !== null) {
			$qb->setMaxResults( intval($limit) );
		}

		if ($offset !== null) {
			$qb->setFirstResult( intval($offset) );
		}

		$query = $qb->getQuery();

		return $query->getResult();
	}

	/**
	 * Find Jdd by Field value
	 * returns only the first found
	 *
	 * @param array $criteria
	 * @param array|null $orderBy
	 * @return array
	 */
	public function findOneByField(array $criteria, array $orderBy = null)
	{
		return $this->findByField($criteria, $orderBy, 1);
	}

	
	/**
	 * Find Jdd by their metadata ID.
	 * @param type $metadataId
	 * @return type
	 */
	public function findByMetadataId($metadataId) {
		
		$qb = $this->createQueryBuilder('j')
			->where('j.status != :status')
			->setParameter('status', 'deleted')
			->join('j.fields', 'f')
			->andWhere('f.key = :key')
			->andWhere('f.valueString = :valueStr')
			->setParameter('key', 'metadataId')
			->setParameter('valueStr', $metadataId)
		;

		return $qb->getQuery()->getResult();
	}
	
	/**
	 * Find Jdd by Field value
	 *
	 * @param array $criteria
	 * @param array|null $orderBy
	 * @param null $limit
	 * @param null $offset
	 * @return array
	 */
	public function getActiveJddsFields($jddId = null, User $user = null) {
		
		$dql = "SELECT j FROM IgnGincoBundle:RawData\JddField j WHERE j.jdd = :jddId AND j.key NOT LIKE 'metadataCAId' ";
		$dql .= "ORDER BY j.jdd";
		$query = $this->getEntityManager()->createQuery($dql);
		
		if ($jddId != null) {
			$query->setParameter('jddId', $jddId);
		}
		return $query->getResult();
	}
	

}
