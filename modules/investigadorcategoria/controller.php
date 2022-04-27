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
		$investigadorcategoria_collection = Collector()->get('InvestigadorCategoria');
		$this->view->panel($investigadorcategoria_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->save();
		$redirect = URL_APP . "/investigadorcategoria/panel";
		echo "<script>location.href='{$redirect}';</script>";
	}

	function editar($arg) {
		SessionHandler()->check_session();
		$this->model->investigadorcategoria_id = $arg;
		$this->model->get();
		$investigadorcategoria_collection = Collector()->get('InvestigadorCategoria');
		$this->view->editar($investigadorcategoria_collection, $this->model);
	}
}
?>