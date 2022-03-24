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
		$this->model = new Investigador();
		$this->view = new InvestigadorView();
	}

	function agregar() {
    	SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$investigadorcategoria_collection = Collector()->get('InvestigadorCategoria');
		$lineainvestigacion_collection = Collector()->get('LineaInvestigacion');
		$universidad_collection = Collector()->get('Universidad');
		$this->view->agregar($investigadorcategoria_collection, $lineainvestigacion_collection, $universidad_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		//SessionHandler()->check_admin_level();
		$this->model->fecha = date('Y-m-d');
		$this->model->nombre = filter_input(INPUT_POST, 'nombre');
		$this->model->ciudad_residencia = 'N/A';
		$this->model->direccion = 'N/A';
		$this->model->telefono = 'N/A';
		$this->model->correoelectronico = 'N/A';
		$this->model->url_web = filter_input(INPUT_POST, 'url_web');
		$this->model->cv_ingles = 'NA';
		$this->model->autoriza_tratamiento_datos = 'NA';
		$this->model->intereses = 'N/A';
		$this->model->observacion = 'N/A';
		$this->model->investigadorcategoria = filter_input(INPUT_POST, 'investigadorcategoria');
		$this->model->lineainvestigacion = filter_input(INPUT_POST, 'lineainvestigacion');
		$this->model->sublineainvestigacion = 62;
		$this->model->grupoinvestigacion = 82;
		$this->model->universidad = filter_input(INPUT_POST, 'universidad');
		$this->model->universidadfacultad = 51;
		$this->model->universidadarea = 11;
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