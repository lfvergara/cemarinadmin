<?php
require_once "modules/universidad/model.php";
require_once "modules/universidad/view.php";


class UniversidadController {

	function __construct() {
		$this->model = new Universidad();
		$this->view = new UniversidadView();
	}

	function panel() {
    	SessionHandler()->check_session();
		$universidad_collection = Collector()->get('Universidad');
		$this->view->panel($universidad_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->save();
        $redirect = URL_APP . "/universidad/panel";
        echo "<script>location.href='{$redirect}';</script>";
	}

	function editar($arg) {
		SessionHandler()->check_session();
		$this->model->universidad_id = $arg;
		$this->model->get();
		$universidad_collection = Collector()->get('Universidad');
		$this->view->editar($universidad_collection, $this->model);
	}
}
?>