<?php
namespace Ign\Bundle\GincoBundle\Services;

use Symfony\Component\Process\Process;

use Doctrine\ORM\EntityManagerInterface;

/**
 * Service to transform shapefile to csv
 */
class Ogr2ogr {

	/**
	 * Chemin vers l'exécutable
	 * @var string
	 */
	private $path;

	/**
	 * Option geometry du command
	 * @var string
	 */
	private $geometry = 'AS_WKT';

	/**
	 * Separator pour les champs CSV
	 * @var string
	 */
	private $separator = 'SEMICOLON';

	/**
	 * -nlt type parameter
	 * @var string
	 */
	private $type = null;

	/**
	 * transform to this SRS on output
	 * @var string
	 */
	private $outputSrs = 'EPSG:4326';

	/**
	 * transform to this SRS on input
	 * @var string
	 */
	private $inputSrs = null;
    
    /**
     *
     * @var EntityManagerInterface
     */
    private $entityManager ;

	/**
	 * Constructeur prenant en paramètre le chemin vers l'exécutable
	 *
	 * @param string $path
	 */
	public function __construct($logger, $configuration, $entityManager, $path = 'ogr2ogr' ){
		$this->logger = $logger;
		$this->configuration = $configuration;
		$this->path = $path ;
        $this->entityManager = $entityManager ;
	}

	/**
	 * Get version
	 * @throws \Exception
	 * @return string
	 */
	public function getVersion(){
		$commandLine  = $this->path." --version" ;
		$process = new Process( $commandLine );
		$result = $process->run();
		if ( $result !== 0 ){
			$message = "[ogr2ogr]".$process->getErrorOutput()." (".$commandLine.")" ;
			throw new \Exception($message);
		}else{
			return $process->getOutput() ;
		}
	}


	/**
	 * Transform a shp into csv with wkt geometry
	 *
	 * @param string $inputPath
	 * @param string $outputPath
	 *
	 * @return string
	 *
	 */
	public function shp2csv($inputPath , $outputPath){

		$commandLine  = $this->path." -f CSV " . $outputPath . " " . $inputPath;

		$commandLine .= ' -lco GEOMETRY='.$this->geometry;

		$commandLine .= ' -lco SEPARATOR='.$this->separator;


		if (isset($this->type)) {
			$commandLine .= ' -nlt '.$this->type;
		}

		if (isset($this->outputSrs)) {
			$commandLine .= ' -t_srs ' . $this->outputSrs;
		}

		if (isset($this->inputSrs)) {
			$commandLine .= ' -s_srs ' . $this->inputSrs;
		}
		
		$this->logger->debug('commandLine : ' . $commandLine);

		$process = new Process( $commandLine );
		$result = $process->run();

		return $process->getOutput() ;
	}

	/**
	 * Transform a csv into shp with wkt geometry
	 *
	 * @param string $inputPath
	 * @param string $outputPath
	 * @param string $a_srs SRID to assign to output. Must be a valide EPSG code.
	 *
	 * @return string
	 *
	 */
	public function csv2shp($inputPath , $outputPath, $a_srs = null){
		$commandLine  = $this->path.' -f "ESRI Shapefile" '.$outputPath.' '. $inputPath;
		
		if (isset($this->separator)) {
			$commandLine .= ' -lco SEPARATOR='.$this->separator;
		}
		
		if (isset($a_srs)) {
			$commandLine .= " -a_srs $a_srs " ;
		}

		$process = new Process( $commandLine );
		$result = $process->run();

		return $process->getOutput() ;
	}
    

    /**
     * Transform a SQL query to shapefile
     * @param type $sql
     * @param type $outputPath
     * @param type $a_srs
     * @return type
     */
    public function pg2shp($sql, $outputPath, $a_srs = null) {
        
        $connection = $this->entityManager->getConnection() ;
        
        $connectionString = 'PG:"host=' . $connection->getHost()
            . ' user=' . $connection->getUsername()
            . ' dbname=' .$connection->getDatabase()
            . ' password=' . $connection->getPassword()
            . ' port=' . $connection->getPort()
            . '"' ;
        
        $commandLine = $this->path . ' -f "ESRI Shapefile" ' . $outputPath . ' ' . $connectionString . ' -sql "' . $sql . '"' ;
        
        if (isset($this->separator)) {
			$commandLine .= ' -lco SEPARATOR='.$this->separator;
		}
		
		if (isset($a_srs)) {
			$commandLine .= " -a_srs $a_srs " ;
		}

		$process = new Process( $commandLine );
		$result = $process->run();

		return $process->getOutput() ;
    }

	/**
	 *
	 */
	public function getPath(){
		return $this->path;
	}

	/**
	 *
	 * @param string $path
	 * @return \Ign\Bundle\GDALBundle\Service\Ogr2ogr
	 */
	public function setPath($path){
		$this->path = $path;

		return $this;
	}

	/**
	 * @param string $geometry
	 * @return \Ign\Bundle\GDALBundle\Service\Ogr2ogr
	 */
	public function setGeometry($geometry) {
		$this->geometry = $geometry;
		return $this;
	}

	/**
	 * @param string $separator
	 * @return \Ign\Bundle\GDALBundle\Service\Ogr2ogr
	 */
	public function setSeparator($separator) {
		$this->separator = $separator;
		return $this;
	}

	/**
	 * @param string $type
	 * @return \Ign\Bundle\GDALBundle\Service\Ogr2ogr
	 */
	public function setType($type) {
		$this->type = $type;
		return $this;
	}

	/**
	 * @param string $outputSrs
	 * @return \Ign\Bundle\GDALBundle\Service\Ogr2ogr
	 */
	public function setOutputSrs($outputSrs) {
		$this->outputSrs = $outputSrs;
		return $this;
	}

	/**
	 * @param string $inputSrs
	 * @return \Ign\Bundle\GDALBundle\Service\Ogr2ogr
	 */
	public function setInputSrs($inputSrs) {
		$this->inputSrs = $inputSrs;
		return $this;
	}

}
