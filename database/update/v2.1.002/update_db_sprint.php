<?php
$sprintDir = dirname(__FILE__);
require_once "$sprintDir/../../../lib/share.php";

// ------------------------------------------------
// Synopsis: migrate DB GINCO from v2.0.6 to v2.1.0
// ------------------------------------------------
function usage($mess = NULL) {
	echo "------------------------------------------------------------------------\n";
	echo ("\nUpdate DB from v2.0.6 to v2.1.0\n");
	echo ("> php update_db_sprint.php -f <configFile> [{-D<propertiesName>=<Value>}]\n\n");
	echo "o <configFile>: a java style properties file for the instance on which you work\n";
	echo "o -D : inline options to complete or override the config file.\n";
	echo "------------------------------------------------------------------------\n";
	if (!is_null($mess)) {
		echo ("$mess\n\n");
		exit(1);
	}
	exit();
}

if (count($argv) == 1)
	usage();
$config = loadPropertiesFromArgs();

try {
	/* patch code here*/
	//execCustSQLFile("$sprintDir/xxxx.sql", $config);
    execCustSQLFile("$sprintDir/add_provider_default0.sql", $config);
    execCustSQLFile("$sprintDir/update_provider_default_in_table.sql", $config);
    execCustSQLFile("$sprintDir/add_metadata_check.sql", $config);
    execCustSQLFile("$sprintDir/delete_parameters.sql", $config);
	execCustSQLFile("$sprintDir/add_permission_groups.sql", $config);
	execCustSQLFile("$sprintDir/link_user_to_provider.sql", $config);
} catch (Exception $e) {
	echo "$sprintDir/update_db_sprint.php\n";
	echo "exception: " . $e->getMessage() . "\n";
	exit(1);
}

$CLIParams = implode(' ', array_slice($argv, 1));
/* patch php here */
system("php $sprintDir/update_model_table_providerid.php $CLIParams", $returnCode1);
system("php $sprintDir/update_instance_environment.php $CLIParams", $returnCode2);


if ($returnCode1 != 0 || $returnCode2 != 0) {
	echo "$sprintDir/update_db_sprint.php\n";
	echo "exception: " . $e->getMessage() . "\n";
	exit(1);
}
