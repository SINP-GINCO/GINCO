<?php
namespace Ign\Bundle\GincoBundle\Repository\Metadata;

use Doctrine\ORM\EntityRepository;

use Ign\Bundle\GincoBundle\Entity\Metadata\TableFormat;

class DataRepository extends EntityRepository {

	/**
	 * Returns all the data fields available in the table data.
	 *
	 * @return the list of all fields in the data table
	 *
	 */
	public function findAllFields() {
		$em = $this->getEntityManager();
		$query = $em->createQuery('SELECT DISTINCT dt.data as dataName,dt.label as label, u.type as unitType
    			  FROM IgnGincoBundle:Metadata\Data dt
				  LEFT JOIN IgnGincoBundle:Metadata\Unit u
    			  WITH dt.unit = u.unit
				  ORDER BY dt.data');

		return $query->getResult();
	}
	
	public function findAllFieldsNotInTableFormat(TableFormat $tableFormat) {
		
		$em = $this->getEntityManager();
		$query = $em->createQuery('
			SELECT DISTINCT dt.data as dataName,dt.label as label, u.type as unitType
    		FROM IgnGincoBundle:Metadata\Data dt
			LEFT JOIN IgnGincoBundle:Metadata\Unit u WITH dt.unit = u.unit
			LEFT JOIN IgnGincoBundle:Metadata\TableField tf WITH tf.data = dt.data AND tf.format = :tableFormat
			WHERE tf.format IS NULL
			ORDER BY dt.data
		');

		$query->setParameter('tableFormat', $tableFormat) ;
		
		return $query->getResult();
	}

	/**
	 * Returns all the data fields related to a model which are not named
	 * OGAM_ID%, PROVIDER_ID, USER_LOGIN, SUBMISSION_ID.
	 *
	 * todo : remove ? because not used in project
	 *
	 * @param $modelId the
	 *        	id of the model
	 * @return the list of all fields in the data table related to the model
	 *
	 */
	public function findAllForeignKeysByModelId($modelId) {
		$qb = $this->createQueryBuilder('dt')
			->select('DISTINCT dtj')
			->from('IgnGincoBundle:Metadata\Model', 'm')
			->innerJoin('IgnGincoBundle:Metadata\ModelTables', 'mt', 'WITH', 'mt.model = :modelId')
			->innerJoin('IgnGincoBundle:Metadata\TableFormat', 'tfo', 'WITH', 'tfo.format = mt.table')
			->innerJoin('IgnGincoBundle:Metadata\TableField', 'tfi', 'WITH', 'tfi.tableFormat = tfo.format')
			->innerJoin('IgnGincoBundle:Metadata\Data', 'dtj', 'WITH', 'dtj.data = tfi.data')
			->andWhere('dtj.name NOT IN (:provider_id, :user_login, :submission_id)')
			->andWhere('dtj.name NOT LIKE :ogam_id')
			->setParameters(array(
			'modelId' => $modelId,
			'ogam_id' => TableFormat::PK_PREFIX . '%',
			'provider_id' => 'PROVIDER_ID',
			'user_login' => 'USER_LOGIN',
			'submission_id' => 'SUBMISSION_ID'
		));

		$query = $qb->getQuery();

		return $query->getResult();
	}

	/**
	 * Returns all the data fields related to a Field
	 *
	 * @return array
	 */
	public function findAllRelatedToFields() {
		$qb = $this->createQueryBuilder('dt')
			->select('dt')
			->leftJoin('dt.fields', 'f')
			->where('f.data is not NULL')
			->orderBy('dt.label','ASC');

		return $qb->getQuery()->getResult();
	}

	/**
	 * Returns all the data fields not related to a Field
	 *
	 * @return array
	 */
	public function findAllNotRelatedToFields() {
		$qb = $this->createQueryBuilder('dt')
			->select('dt')
			->leftJoin('dt.fields', 'f')
			->where('f.data is NULL')
			->orderBy('dt.label','ASC');

		return $qb->getQuery()->getResult();
	}

}
