<?php


class InvestigadorCategoriaView extends View {

	function panel($investigadorcategoria_collection) {
		$gui = file_get_contents("static/modules/investigadorcategoria/panel.html");
		$gui_tbl_investigadorcategoria = file_get_contents("static/common/tbl_investigadorcategoria.html");
		$gui_tbl_investigadorcategoria = $this->render_regex('TBL_INVESTIGADORCATEGORIA', $gui_tbl_investigadorcategoria, $investigadorcategoria_collection);
		$render = str_replace('{tbl_investigadorcategoria}', $gui_tbl_investigadorcategoria, $gui);
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