<?php
namespace Ign\Bundle\GincoBundle\Repository\Metadata;

use Doctrine\ORM\Query\ResultSetMappingBuilder;
use Ign\Bundle\GincoBundle\Entity\Metadata\FileField;

/**
 * FileFieldRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class FileFieldRepository extends \Doctrine\ORM\EntityRepository {

	/**
	 * Get the list of requested fields for the file.
	 *
	 * @param String $fileFormat
	 *        	the file format
	 * @return Array[FileField]
	 */
	public function getFileFields($fileFormat) {
		$rsm = new ResultSetMappingBuilder($this->_em);
		$rsm->addRootEntityFromClassMetadata($this->_entityName, 'ff');
		
		// Get the fields specified by the format
		$sql = "SELECT file_field.data, file_field.format, field.type, is_mandatory, mask, label_csv,default_value";
		$sql .= " FROM file_field ";
		$sql .= " LEFT JOIN field on (file_field.data = field.data AND file_field.format = field.format) ";
		$sql .= " WHERE file_field.format = :fileFormat ";
		$sql .= " ORDER BY label_csv ASC";
		
		$query = $this->_em->createNativeQuery($sql, $rsm);
		$query->setParameters([
			'fileFormat' => $fileFormat
		]);
		
		return $query->getResult();
	}
	
	/**
	 * Get the fields of the file.
	 *
	 * @param
	 *        	fileFormat the name of the file format
	 *
	 * @return list of FileField
	 */
	public function findFieldsByFileFormat($fileFormat) {
		$em = $this->getEntityManager();
		$query = $em->createQuery('SELECT DISTINCT dt.data as fieldName, tfi.labelCSV,
						dt.label as label,
						u.type as unitType, tfi.isMandatory,
						tfi.mask, tfi.defaultValue
					FROM IgnGincoBundle:Metadata\FileField tfi
					LEFT JOIN IgnGincoBundle:Metadata\FileFormat tfo
						WITH tfo.format = tfi.format
					LEFT JOIN IgnGincoBundle:Metadata\Data dt
						WITH tfi.data = dt.data
					LEFT JOIN IgnGincoBundle:Metadata\Unit u
						WITH dt.unit = u.unit
					WHERE tfi.format = :format
					ORDER BY tfi.labelCSV');

		$query->setParameters(array(
			'format' => $fileFormat
		));

		return $query->getResult();
	}

	/**
	 * Deletes all the fields of the file.
	 *
	 * @param
	 *        	fileFormat the name of the file f
	 *
	 * @return result of the delete query
	 */
	public function deleteAllByFileFormat($fileFormat) {
		$query = $this->_em->createQuery('DELETE FROM IgnGincoBundle:Metadata\FileField t
			WHERE t.format =:fileFormat');
		$query->setParameters(array(
			'fileFormat' => $fileFormat
		));

		return $query->getResult();
	}

	/**
	 * Deletes the foreign key towards a parent file.
	 *
	 * @param
	 *        	format the name of the file
	 * @return result of the delete query
	 */
	public function deleteForeignKeysByFileFormat($format) {
		$query = $this->_em->createQuery("DELETE FROM IgnGincoBundle:Metadata\FileField f
			WHERE f.tableFormat =:format
			AND f.data LIKE :fkCondition
			AND f.data != :pkCondition");
		$query->setParameters(array(
			'format' => $format,
			'fkCondition' => TableFormat::PK_PREFIX . '%',
			'pkCondition' => TableFormat::PK_PREFIX . $format
		));

		return $query->getResult();
	}
}
