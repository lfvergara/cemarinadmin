<?php


class UniversidadAreaView extends View {

	function panel($universidadarea_collection) {
		$gui = file_get_contents("static/modules/universidadarea/panel.html");
		$gui_tbl_universidadarea = file_get_contents("static/common/tbl_universidadarea.html");
		$gui_tbl_universidadarea = $this->render_regex('TBL_UNIVERSIDADAREA', $gui_tbl_universidadarea, $universidadarea_collection);
		$render = str_replace('{tbl_universidadarea}', $gui_tbl_universidadarea, $gui);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}

	function editar($universidadarea_collection, $obj_universidadarea) {
		$gui = file_get_contents("static/modules/universidadarea/editar.html");
		$gui_tbl_universidadarea = file_get_contents("static/common/tbl_universidadarea.html");
		$gui_tbl_universidadarea = $this->render_regex('TBL_UNIVERSIDADAREA', $gui_tbl_universidadarea, $universidadarea_collection);
		$obj_universidadarea = $this->set_dict($obj_universidadarea);
		$render = str_replace('{tbl_universidadarea}', $gui_tbl_universidadarea, $gui);
		$render = $this->render($obj_universidadarea, $render);
		$render = $this->render_breadcrumb($render);
		$template = $this->render_template($render);
		print $template;
	}
}
?>