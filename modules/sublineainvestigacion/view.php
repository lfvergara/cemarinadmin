<?php


class SubLineaInvestigacionView extends View {

	function panel($sublineainvestigacion_collection) {
		$gui = file_get_contents("static/modules/sublineainvestigacion/panel.html");
		$gui_tbl_sublineainvestigacion = file_get_contents("static/common/tbl_sublineainvestigacion.html");
		$gui_tbl_sublineainvestigacion = $this->render_regex('TBL_SUBLINEAINVESTIGACION', $gui_tbl_sublineainvestigacion, $sublineainvestigacion_collection);
		$render = str_replace('{tbl_sublineainvestigacion}', $gui_tbl_sublineainvestigacion, $gui);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}

	function editar($sublineainvestigacion_collection, $obj_sublineainvestigacion) {
		$gui = file_get_contents("static/modules/sublineainvestigacion/editar.html");
		$gui_tbl_sublineainvestigacion = file_get_contents("static/common/tbl_sublineainvestigacion.html");
		$gui_tbl_sublineainvestigacion = $this->render_regex('TBL_SUBLINEAINVESTIGACION', $gui_tbl_sublineainvestigacion, $sublineainvestigacion_collection);
		$obj_sublineainvestigacion = $this->set_dict($obj_sublineainvestigacion);
		$render = str_replace('{tbl_sublineainvestigacion}', $gui_tbl_sublineainvestigacion, $gui);
		$render = $this->render($obj_sublineainvestigacion, $render);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}
}
?>