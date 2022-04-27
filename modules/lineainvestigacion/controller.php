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
		$lineainvestigacion_collection = Collector()->get('LineaInvestigacion');
		$this->view->panel($lineainvestigacion_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->save();
        $redirect = URL_APP . "/lineainvestigacion/panel";
        echo "<script>location.href='{$redirect}';</script>";
	}

	function editar($arg) {
		SessionHandler()->check_session();
		$this->model->lineainvestigacion_id = $arg;
		$this->model->get();
		$lineainvestigacion_collection = Collector()->get('LineaInvestigacion');
		$this->view->editar($lineainvestigacion_collection, $this->model);
	}
}
?>