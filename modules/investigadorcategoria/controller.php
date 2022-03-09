<?php
require_once "modules/investigadorcategoria/model.php";
require_once "modules/investigadorcategoria/view.php";


class InvestigadorCategoriaController {

	function __construct() {
		$this->model = new InvestigadorCategoria();
		$this->view = new InvestigadorCategoriaView();
	}

	function panel() {
    	SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$investigadorcategoria_collection = Collector()->get('InvestigadorCategoria');
		$this->view->panel($investigadorcategoria_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();		
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->save();
		header("Location: " . URL_APP . "/investigadorcategoria/panel");
	}

	function editar($arg) {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$this->model->investigadorcategoria_id = $arg;
		$this->model->get();
		$investigadorcategoria_collection = Collector()->get('InvestigadorCategoria');
		$this->view->editar($investigadorcategoria_collection, $this->model);
	}
}
?>