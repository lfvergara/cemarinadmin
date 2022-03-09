<?php


class UniversidadFacultadView extends View {

	function panel($universidadfacultad_collection) {
		$gui = file_get_contents("static/modules/universidadfacultad/panel.html");
		$gui_tbl_universidadfacultad = file_get_contents("static/common/tbl_universidadfacultad.html");
		$gui_tbl_universidadfacultad = $this->render_regex('TBL_UNIVERSIDADFACULTAD', $gui_tbl_universidadfacultad, $universidadfacultad_collection);
		$render = str_replace('{tbl_universidadfacultad}', $gui_tbl_universidadfacultad, $gui);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}

	function editar($universidadfacultad_collection, $obj_universidadfacultad) {
		$gui = file_get_contents("static/modules/universidadfacultad/editar.html");
		$gui_tbl_universidadfacultad = file_get_contents("static/common/tbl_universidadfacultad.html");
		$gui_tbl_universidadfacultad = $this->render_regex('TBL_UNIVERSIDADFACULTAD', $gui_tbl_universidadfacultad, $universidadfacultad_collection);
		$obj_universidadfacultad = $this->set_dict($obj_universidadfacultad);
		$render = str_replace('{tbl_universidadfacultad}', $gui_tbl_universidadfacultad, $gui);
		$render = $this->render($obj_universidadfacultad, $render);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}
}
?>