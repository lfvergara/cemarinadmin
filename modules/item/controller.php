<?php
require_once "modules/item/model.php";
require_once "modules/item/view.php";
require_once "modules/menu/model.php";
require_once "modules/submenu/model.php";


class ItemController {

	function __construct() {
		$this->model = new Item();
		$this->view = new ItemView();
	}

	function editar($arg) {
		SessionHandler()->check_session();
		$this->model->item_id = $arg;
		$this->model->get();
		$menu_collection = Collector()->get('Menu');
		$submenu_collection = Collector()->get('SubMenu');
		$item_collection = Collector()->get('Item');
		$this->view->editar($this->model, $menu_collection, $submenu_collection, $item_collection);
	}

	function guardar() {
		SessionHandler()->check_session();
		foreach ($_POST as $clave=>$valor) $this->model->$clave = $valor;
		$this->model->save();
		$redirect = URL_APP . "/menu/agregar";
		echo "<script>location.href='{$redirect}';</script>";
	}

	function eliminar($arg) {
		SessionHandler()->check_session();
		$this->model->item_id = $arg;
		$this->model->delete();
		$redirect = URL_APP . "/menu/agregar";
		echo "<script>location.href='{$redirect}';</script>";
	}
}
?>