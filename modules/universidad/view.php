<?php


class UniversidadView extends View {

	function panel($universidad_collection) {
		$gui = file_get_contents("static/modules/universidad/panel.html");
		$gui_tbl_universidad = file_get_contents("static/common/tbl_universidad.html");
		$gui_tbl_universidad = $this->render_regex('TBL_UNIVERSIDAD', $gui_tbl_universidad, $universidad_collection);
		$render = str_replace('{tbl_universidad}', $gui_tbl_universidad, $gui);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}

	function editar($universidad_collection, $obj_universidad) {
		$gui = file_get_contents("static/modules/universidad/editar.html");
		$gui_tbl_universidad = file_get_contents("static/common/tbl_universidad.html");
		$gui_tbl_universidad = $this->render_regex('TBL_UNIVERSIDAD', $gui_tbl_universidad, $universidad_collection);
		$obj_universidad = $this->set_dict($obj_universidad);
		$render = str_replace('{tbl_universidad}', $gui_tbl_universidad, $gui);
		$render = $this->render($obj_universidad, $render);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}
}
?>