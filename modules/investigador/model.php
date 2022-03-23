<?php
require_once "modules/investigadorcategoria/model.php";
require_once "modules/lineainvestigacion/model.php";
require_once "modules/sublineainvestigacion/model.php";
require_once "modules/grupoinvestigacion/model.php";
require_once "modules/universidad/model.php";
require_once "modules/universidadfacultad/model.php";
require_once "modules/universidadarea/model.php";


class Investigador extends StandardObject {
	
	function __construct() {
		$this->investigador_id = 0;
		$this->fecha = '';
		$this->nombre = '';
		$this->ciudad_residencia = '';
		$this->direccion = '';
		$this->telefono = '';
		$this->correoelectronico = '';
		$this->url_web = '';
		$this->cv_ingles = '';
		$this->autoriza_tratamiento_datos = '';
		$this->intereses = '';
		$this->observacion = '';
		$this->investigadorcategoria = $investigadorcategoria;
		$this->lineainvestigacion = $lineainvestigacion;
		$this->sublineainvestigacion = $sublineainvestigacion;
		$this->grupoinvestigacion = $grupoinvestigacion;
		$this->universidad = $universidad;
		$this->universidadfacultad = $universidadfacultad;
		$this->universidadarea = $universidadarea;
	}
}
?>