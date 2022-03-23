<?php
require_once "modules/investigador/model.php";
require_once "modules/investigador/view.php";
require_once "modules/investigadorcategoria/model.php";
require_once "modules/lineainvestigacion/model.php";
require_once "modules/sublineainvestigacion/model.php";
require_once "modules/grupoinvestigacion/model.php";
require_once "modules/universidad/model.php";
require_once "modules/universidadfacultad/model.php";
require_once "modules/universidadarea/model.php";


class InvestigadorController {

	function __construct() {
		//$this->model = new Investigador();
		$this->view = new InvestigadorView();
	}

	function agregar() {
    	SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$investigadorcategoria_collection = Collector()->get('InvestigadorCategoria');
		$lineainvestigacion_collection = Collector()->get('LineaInvestigacion');
		$sublineainvestigacion_collection = Collector()->get('SubLineaInvestigacion');
		$grupoinvestigacion_collection = Collector()->get('GrupoInvestigacion');
		$universidad_collection = Collector()->get('Universidad');
		$universidadfacultad_collection = Collector()->get('UniversidadFacultad');
		$universidadarea_collection = Collector()->get('UniversidadArea');
		$this->view->agregar($investigadorcategoria_collection, $lineainvestigacion_collection, $sublineainvestigacion_collection, $grupoinvestigacion_collection, $universidad_collection, $universidadfacultad_collection, $universidadarea_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();		
		foreach ($_POST as $key=>$value) $this->model->$key = $value;
        $this->model->fecha = date('Y-m-d');
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