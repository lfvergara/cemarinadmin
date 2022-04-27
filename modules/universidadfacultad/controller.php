<?php
require_once "modules/universidadfacultad/model.php";
require_once "modules/universidadfacultad/view.php";


class UniversidadFacultadController {

	function __construct() {
		$this->model = new UniversidadFacultad();
		$this->view = new UniversidadFacultadView();
	}

	function panel() {
    	SessionHandler()->check_session();
		$universidadfacultad_collection = Collector()->get('UniversidadFacultad');
		$this->view->panel($universidadfacultad_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();		
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->save();
		$redirect = URL_APP . "/universidadfacultad/panel";
		echo "<script>location.href='{$redirect}';</script>";
	}

	function editar($arg) {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$this->model->universidadfacultad_id = $arg;
		$this->model->get();
		$universidadfacultad_collection = Collector()->get('UniversidadFacultad');
		$this->view->editar($universidadfacultad_collection, $this->model);
	}
}
?>