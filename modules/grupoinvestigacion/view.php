<?php


class GrupoInvestigacionView extends View {

	function panel($grupoinvestigacion_collection) {
		$gui = file_get_contents("static/modules/grupoinvestigacion/panel.html");
		$gui_tbl_grupoinvestigacion = file_get_contents("static/common/tbl_grupoinvestigacion.html");
		$gui_tbl_grupoinvestigacion = $this->render_regex('TBL_GRUPOINVESTIGACION', $gui_tbl_grupoinvestigacion, $grupoinvestigacion_collection);
		$render = str_replace('{tbl_grupoinvestigacion}', $gui_tbl_grupoinvestigacion, $gui);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}

	function editar($grupoinvestigacion_collection, $obj_grupoinvestigacion) {
		$gui = file_get_contents("static/modules/grupoinvestigacion/editar.html");
		$gui_tbl_grupoinvestigacion = file_get_contents("static/common/tbl_grupoinvestigacion.html");
		$gui_tbl_grupoinvestigacion = $this->render_regex('TBL_GRUPOINVESTIGACION', $gui_tbl_grupoinvestigacion, $grupoinvestigacion_collection);
		$obj_grupoinvestigacion = $this->set_dict($obj_grupoinvestigacion);
		$render = str_replace('{tbl_grupoinvestigacion}', $gui_tbl_grupoinvestigacion, $gui);
		$render = $this->render($obj_grupoinvestigacion, $render);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}
}
?>