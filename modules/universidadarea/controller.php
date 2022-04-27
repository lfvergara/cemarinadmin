<?php
require_once "modules/universidadarea/model.php";
require_once "modules/universidadarea/view.php";


class UniversidadAreaController {

	function __construct() {
		$this->model = new UniversidadArea();
		$this->view = new UniversidadAreaView();
	}

	function panel() {
    	SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$universidadarea_collection = Collector()->get('UniversidadArea');
		$this->view->panel($universidadarea_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();		
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->save();
		$redirect = URL_APP . "/universidadarea/panel";
	}

	function editar($arg) {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$this->model->universidadarea_id = $arg;
		$this->model->get();
		$universidadarea_collection = Collector()->get('UniversidadArea');
		$this->view->editar($universidadarea_collection, $this->model);
	}
}
?>