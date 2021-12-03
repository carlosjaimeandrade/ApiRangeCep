<?php
date_default_timezone_set('America/Sao_Paulo');
setlocale(LC_TIME, 'pt_BR', 'pt_BR.uft-8','portuguese');


//pastas
define('MODEL_PATH', realpath(dirname(__FILE__) . '/../models'));
define('CONTROLLER_PATH', realpath(dirname(__FILE__) . '/../controllers'));
define('BASEURL', '/api_range_cep2/');
require_once(realpath(dirname(__FILE__). '/database.php'));
require_once(realpath(dirname(__FILE__). '/loader.php'));

