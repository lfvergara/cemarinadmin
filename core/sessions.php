<?php
require_once 'core/helpers/user.php';
require_once 'modules/usuario/model.php';
require_once 'modules/configuracionmenu/model.php';


class SessionBaseHandler {
    function checkin() {
        $user = hash(ALGORITMO_USER, $_POST['usuario']);
        $clave = hash(ALGORITMO_PASS, $_POST['contrasena']);
        $hash = hash(ALGORITMO_FINAL, $user . $clave);
        $usuariodetalle_id = User::get_usuariodetalle_id($hash);

        if ($usuariodetalle_id != 0) {
            $usuario_id = User::get_usuario_id($usuariodetalle_id);
            if ($usuario_id != 0) {
                $um = new Usuario();
                $um->usuario_id = $usuario_id;
                $um->get();
                $configuracionmenu_id = $um->configuracionmenu->configuracionmenu_id;
                $configuracionmenu_denominacion = $um->configuracionmenu->denominacion;

                $nivel_denominacion = ($um->nivel == 1) ? "Operador" : "";
                $nivel_denominacion = ($um->nivel == 2) ? "Analista" : $nivel_denominacion;
                $nivel_denominacion = ($um->nivel == 3) ? "Administrador" : $nivel_denominacion;
                $nivel_denominacion = ($um->nivel == 9) ? "Desarrollador" : $nivel_denominacion;
                $data_login = array(
                    "usuario-usuario_id"=>$um->usuario_id,
                    "usuario-denominacion"=>$um->denominacion,
                    "usuario-nivel"=>$um->nivel,
                    "nivel-denominacion"=>$nivel_denominacion,
                    "configuracionmenu-denominacion"=>$configuracionmenu_denominacion,
                    "usuariodetalle-nombre"=>$um->usuariodetalle->nombre,
                    "usuariodetalle-apellido"=>$um->usuariodetalle->apellido,
                    "usuariodetalle-correoelectronico"=>$um->usuariodetalle->correoelectronico,
                    "usuario-configuracionmenu"=>$um->configuracionmenu->configuracionmenu_id);

                $_SESSION["data-login-" . APP_ABREV] = $data_login;
                $_SESSION['login' . APP_ABREV] = true;

                switch ($configuracionmenu_id) {
                    case 5:
                        $redirect = URL_APP . "/usuario/perfil";
                        break;
                    default:
                        $redirect = ($um->nivel < 3) ? URL_APP . "/usuario/perfil" : URL_APP . "/usuario/perfil";
                        break;
                }
            }
        } else {
            $_SESSION['login' . APP_ABREV] = false;
            $redirect = URL_APP . LOGIN_URI . "/mError";
        }

	    echo "<script>location.href='{$redirect}';</script>";
    }

    function check_session() {
        print_r($_SESSION['login' . APP_ABREV]);exit;
        if($_SESSION['login' . APP_ABREV] !== true) {
            $this->checkout();
        }
    }

    function check_panel($usr_nivel) {
        switch ($usr_nivel) {
            case 1:
                $panel = "operador";
                break;
            case 2:
                $panel = "analista";
                break;
            case 3:
                $panel = "administrador";
                break;
            case 9:
                $panel = "administrador";
                break;
        }

        return $panel;
    }

    function check_admin_level() {
        $level = $_SESSION["data-login-" . APP_ABREV]["usuario-nivel"];
        $temp_admin_id = array(3,9);
        if (!in_array($level, $temp_admin_id)) {
            $redirect = URL_APP . "/usuario/perfil";
            echo "<script>location.href='{$redirect}';</script>";
        }
    }

    function check_level() {
        $level = $_SESSION["data-login-" . APP_ABREV]["usuario-nivel"];
        if ($level > 1 ) {
            $_SESSION['login' . APP_ABREV] = true;
        } else {
            $this->checkout();
        }
    }

    function checkout() {
        $_SESSION[] = array();
        if (ini_get("session.use_cookies")) {
            $params = session_get_cookie_params();
            setcookie(session_name(), '', time() - 42000,
                $params["path"], $params["domain"],
                $params["secure"], $params["httponly"]
            );
        }
	
        session_destroy();
        $_SESSION['login' . APP_ABREV] = false;
	    $redirect = URL_APP . LOGIN_URI;
        echo "<script>location.href='{$redirect}';</script>";
    }
}

function SessionHandler() { return new SessionBaseHandler();}
