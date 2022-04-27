<?php
require_once "modules/grupoinvestigacion/model.php";
require_once "modules/grupoinvestigacion/view.php";


class GrupoInvestigacionController {

	function __construct() {
		$this->model = new GrupoInvestigacion();
		$this->view = new GrupoInvestigacionView();
	}

	function panel() {
    	SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$grupoinvestigacion_collection = Collector()->get('GrupoInvestigacion');
		$this->view->panel($grupoinvestigacion_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();		
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->save();
        $redirect = URL_APP . "/grupoinvestigacion/panel";
        echo "<script>location.href='{$redirect}';</script>";
	}

	function editar($arg) {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$this->model->grupoinvestigacion_id = $arg;
		$this->model->get();
		$grupoinvestigacion_collection = Collector()->get('GrupoInvestigacion');
		$this->view->editar($grupoinvestigacion_collection, $this->model);
	}
}
?>