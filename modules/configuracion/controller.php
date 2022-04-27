<?php
require_once "modules/configuracion/model.php";
require_once "modules/configuracion/view.php";
require_once "modules/competencia/model.php";
require_once "modules/configuraciondecision/model.php";


class ConfiguracionController {

	function __construct() {
		$this->model = new Configuracion();
		$this->view = new ConfiguracionView();
	}

	function panel() {
    	SessionHandler()->check_session();
    	SessionHandler()->checkPerfil('3,9');
    	require_once "core/helpers/file.php";
    	$this->model->configuracion_id = 1;
    	$this->model->get();    	
    	$cm = new Competencia();
    	$cm->competencia_id = 1;
    	$cm->get();		
    	$ronda_collection = Collector()->get('RondaCompetencia');
    	$estado_collection = Collector()->get('EstadoCompetencia');
    	$this->view->panel($ronda_collection, $estado_collection, $this->model, $cm);
	}

	function ver_archivo() {
    	SessionHandler()->check_session();
    	SessionHandler()->checkPerfil('3,9');
    	require_once "core/helpers/file.php";
	}

	function definir_entidad() {
		SessionHandler()->check_session();
		SessionHandler()->checkPerfil('3,9');
		$this->model->configuracion_id = filter_input(INPUT_POST, "configuracion_id");
		$this->model->get();
		$this->model->entidad = filter_input(INPUT_POST, "entidad");
		$this->model->save();
		$redirect = URL_APP . "/configuracion/panel";
		echo "<script>location.href='{$redirect}';</script>";
	}

	function definir_logo() {
		SessionHandler()->check_session();
		SessionHandler()->checkPerfil('3,9');
		$directorio = URL_PRIVATE . "configuracion/logo/";		
		$archivo = $_FILES["logo"]["tmp_name"];
		$finfo = new finfo(FILEINFO_MIME_TYPE);
		$mime = $finfo->file($archivo);
		$formato = explode("/", $mime);
		$mimes_permitidos = array("image/jpeg");		
		$name = "logo";
		if(in_array($mime, $mimes_permitidos)) move_uploaded_file($archivo, "{$directorio}/{$name}"); 
		$redirect = URL_APP . "/configuracion/panel";
		echo "<script>location.href='{$redirect}';</script>";
	}

	function guardar() {
		SessionHandler()->check_session();
		SessionHandler()->checkPerfil('3,9');
		foreach ($_POST as $clave=>$valor) $this->model->$clave = $valor;
        $this->model->save();
		$redirect = URL_APP . "/configuracion/panel";
		echo "<script>location.href='{$redirect}';</script>";
	}
}
?>