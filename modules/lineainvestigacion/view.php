<?php


class LineaInvestigacionView extends View {

	function panel($lineainvestigacion_collection) {
		$gui = file_get_contents("static/modules/lineainvestigacion/panel.html");
		$gui_tbl_lineainvestigacion = file_get_contents("static/common/tbl_lineainvestigacion.html");
		$gui_tbl_lineainvestigacion = $this->render_regex('TBL_LINEAINVESTIGACION', $gui_tbl_lineainvestigacion, $lineainvestigacion_collection);
		$render = str_replace('{tbl_lineainvestigacion}', $gui_tbl_lineainvestigacion, $gui);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}

	function editar($lineainvestigacion_collection, $obj_lineainvestigacion) {
		$gui = file_get_contents("static/modules/lineainvestigacion/editar.html");
		$gui_tbl_lineainvestigacion = file_get_contents("static/common/tbl_lineainvestigacion.html");
		$gui_tbl_lineainvestigacion = $this->render_regex('TBL_LINEAINVESTIGACION', $gui_tbl_lineainvestigacion, $lineainvestigacion_collection);
		$obj_lineainvestigacion = $this->set_dict($obj_lineainvestigacion);
		$render = str_replace('{tbl_lineainvestigacion}', $gui_tbl_lineainvestigacion, $gui);
		$render = $this->render($obj_lineainvestigacion, $render);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}
}
?>