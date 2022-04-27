<?php
require_once "modules/sublineainvestigacion/model.php";
require_once "modules/sublineainvestigacion/view.php";


class SubLineaInvestigacionController {

	function __construct() {
		$this->model = new SubLineaInvestigacion();
		$this->view = new SubLineaInvestigacionView();
	}

	function panel() {
    	SessionHandler()->check_session();
		$sublineainvestigacion_collection = Collector()->get('SubLineaInvestigacion');
		$this->view->panel($sublineainvestigacion_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->save();
		$redirect = URL_APP . "/sublineainvestigacion/panel";
        echo "<script>location.href='{$redirect}';</script>";
	}

	function editar($arg) {
		SessionHandler()->check_session();
		$this->model->sublineainvestigacion_id = $arg;
		$this->model->get();
		$sublineainvestigacion_collection = Collector()->get('SubLineaInvestigacion');
		$this->view->editar($sublineainvestigacion_collection, $this->model);
	}
}
?>