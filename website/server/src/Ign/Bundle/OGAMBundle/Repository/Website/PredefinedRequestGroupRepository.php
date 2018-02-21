<?php
namespace Ign\Bundle\OGAMBundle\Repository\Website;

/**
 * PredefinedRequestGroupRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class PredefinedRequestGroupRepository extends \Doctrine\ORM\EntityRepository {

	/**
	 * Get the list of predefined request group.
	 *
	 * @return Array[PredefinedRequestGroup] the list of request groups
	 */
	public function getPredefinedRequestGroupList() {
		$qb = $this->_em->createQueryBuilder();
		$qb->select('prg')
			->from('OGAMBundle:Website\PredefinedRequestGroup', 'prg')
			->orderBy('prg.position, prg.label', 'ASC');
		return $qb->getQuery()->getResult();
	}
}