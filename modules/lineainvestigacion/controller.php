<?php
require_once "modules/lineainvestigacion/model.php";
require_once "modules/lineainvestigacion/view.php";


class LineaInvestigacionController {

	function __construct() {
		$this->model = new LineaInvestigacion();
		$this->view = new LineaInvestigacionView();
	}

	function panel() {
    	SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$lineainvestigacion_collection = Collector()->get('LineaInvestigacion');
		$this->view->panel($lineainvestigacion_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();		
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->save();
		header("Location: " . URL_APP . "/lineainvestigacion/panel");
	}

	function editar($arg) {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$this->model->lineainvestigacion_id = $arg;
		$this->model->get();
		$lineainvestigacion_collection = Collector()->get('LineaInvestigacion');
		$this->view->editar($lineainvestigacion_collection, $this->model);
	}
}
?>