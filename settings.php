<?php
# Ambiente del sistema
const AMBIENTE = "prod";
const SO_UNIX = true;

# Credenciales para la conexión con la base de datos MySQL
const DB_HOST = 'localhost';
const DB_USER = 'ptkzblmy_corellia';
const DB_PASS = 'c3M4R1n.1630';
const DB_NAME = 'ptkzblmy_cemarinadmin';


# Algoritmos utilizados para la encriptación de credenciales
# para el registro y acceso de usuarios del sistema
const ALGORITMO_USER = 'crc32';
const ALGORITMO_PASS = 'sha512';
const ALGORITMO_FINAL = 'md5';


# Direcciones a recursos estáticos de interfaz gráfica
const TEMPLATE = "static/template.html";
if (SO_UNIX == true) {
	define('URL_APP', "");
	define('URL_STATIC', "/static/template/");
	
	# Directorio private del sistema
	$url_private = "/home/ptkzblmy/public_html/cemarinadmin/private/";
	define('URL_PRIVATE', $url_private);
	ini_set("include_path", URL_PRIVATE);
} else {
	define('URL_APP', "/cemarinadmin");
	define('URL_STATIC', "/cemarinadmin/static/template/");
	define('URL_STATIC_SITIO', "/cemarinadmin/static/template_sitio/");

	# Directorio private del sistema
	$url_private = "c:/cemarinadminFiles/private/";
	define('URL_PRIVATE', $url_private);
	ini_set("include_path", URL_PRIVATE);
}

# Configuración estática del sistema
const APP_TITTLE = "dhCEMarin";
const APP_VERSION = "";
const APP_ABREV = "cemarinadmin";
const LOGIN_URI = "/usuario/login";
const DEFAULT_MODULE = "usuario";
const DEFAULT_ACTION = "perfil";

define('DOCUMENT_ROOT', $_SERVER['DOCUMENT_ROOT']);
ini_set('include_path', DOCUMENT_ROOT);

session_start();
$session_vars = array('login'=>false);
foreach($session_vars as $var=>$value) {
    if(!isset($_SESSION[$var])) $_SESSION[$var] = $value;
}
?>
