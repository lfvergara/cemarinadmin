<?php


class InvestigadorView extends View {

	function agregar($investigadorcategoria_collection, $lineainvestigacion_collection, $sublineainvestigacion_collection, $grupoinvestigacion_collection, $universidad_collection, $universidadfacultad_collection, $universidadarea_collection) {
		$gui = file_get_contents("static/modules/investigador/agregar.html");
		$gui_slt_investigadorcategoria = file_get_contents("static/common/slt_investigadorcategoria.html");
		$gui_slt_investigadorcategoria = $this->render_regex('SLT_INVESTIGADORCATEGORIA', $gui_slt_investigadorcategoria, $investigadorcategoria_collection);
		$gui_slt_lineainvestigacion = file_get_contents("static/common/slt_lineainvestigacion.html");
		$gui_slt_lineainvestigacion = $this->render_regex('SLT_LINEAINVESTIGACION', $gui_slt_lineainvestigacion, $lineainvestigacion_collection);
		$gui_slt_sublineainvestigacion = file_get_contents("static/common/slt_sublineainvestigacion.html");
		$gui_slt_sublineainvestigacion = $this->render_regex('SLT_SUBLINEAINVESTIGACION', $gui_slt_sublineainvestigacion, $sublineainvestigacion_collection);
		$gui_slt_universidad = file_get_contents("static/common/slt_universidad.html");
		$gui_slt_universidad = $this->render_regex('SLT_UNIVERSIDAD', $gui_slt_universidad, $universidad_collection);
		$gui_slt_universidadfacultad = file_get_contents("static/common/slt_universidadfacultad.html");
		$gui_slt_universidadfacultad = $this->render_regex('SLT_UNIVERSIDADFACULTAD', $gui_slt_universidadfacultad, $universidadfacultad_collection);
		$gui_slt_universidadarea = file_get_contents("static/common/slt_universidadarea.html");
		$gui_slt_universidadarea = $this->render_regex('SLT_UNIVERSIDADAREA', $gui_slt_universidadarea, $universidadarea_collection);

		$render = str_replace('{slt_investigadorcategoria}', $gui_slt_investigadorcategoria, $gui);
		$render = str_replace('{slt_lineainvestigacion}', $gui_slt_lineainvestigacion, $render);
		$render = str_replace('{slt_sublineainvestigacion}', $gui_slt_sublineainvestigacion, $render);
		$render = str_replace('{slt_universidad}', $gui_slt_universidad, $render);
		$render = str_replace('{slt_universidadfacultad}', $gui_slt_universidadfacultad, $render);
		$render = str_replace('{slt_universidadarea}', $gui_slt_universidadarea, $render);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}

	function editar($investigadorcategoria_collection, $obj_investigadorcategoria) {
		$gui = file_get_contents("static/modules/investigadorcategoria/editar.html");
		$gui_tbl_investigadorcategoria = file_get_contents("static/common/tbl_investigadorcategoria.html");
		$gui_tbl_investigadorcategoria = $this->render_regex('TBL_INVESTIGADORCATEGORIA', $gui_tbl_investigadorcategoria, $investigadorcategoria_collection);
		$obj_investigadorcategoria = $this->set_dict($obj_investigadorcategoria);
		$render = str_replace('{tbl_investigadorcategoria}', $gui_tbl_investigadorcategoria, $gui);
		$render = $this->render($obj_investigadorcategoria, $render);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}
}
?>