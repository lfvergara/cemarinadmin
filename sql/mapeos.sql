/* ****************************************************************************************** */
/* PARA MENÚ 
/* ****************************************************************************************** */
CREATE TABLE IF NOT EXISTS menu (
    menu_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(50)
    , icon VARCHAR(50)
    , url VARCHAR(50)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS submenu (
    submenu_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(50)
    , icon VARCHAR(50)
    , url VARCHAR(50)
    , detalle TEXT
    , menu INT(11)
    , INDEX(menu)
    , FOREIGN KEY (menu)
        REFERENCES menu (menu_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS item (
    item_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(50)
    , url VARCHAR(50)
    , detalle VARCHAR(100)}
    , INDEX(submenu)
    , FOREIGN KEY (submenu)
        REFERENCES submenu (submenu_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS configuracionmenu (
    configuracionmenu_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(250)
    , nivel INT(11)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS submenuconfiguracionmenu (
    submenuconfiguracionmenu_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , compuesto INT(11)
    , INDEX(compuesto)
    , FOREIGN KEY (compuesto)
        REFERENCES configuracionmenu (configuracionmenu_id)
        ON DELETE CASCADE
    , compositor INT(11)
    , FOREIGN KEY (compositor)
        REFERENCES submenu (submenu_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS itemconfiguracionmenu (
    itemconfiguracionmenu_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , compuesto INT(11)
    , INDEX(compuesto)
    , FOREIGN KEY (compuesto)
        REFERENCES configuracionmenu (configuracionmenu_id)
        ON DELETE CASCADE
    , compositor INT(11)
    , FOREIGN KEY (compositor)
        REFERENCES item (item_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS archivo (
    archivo_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(250)
    , url VARCHAR(100)
    , fecha_carga DATE
    , formato VARCHAR(50)
) ENGINE=InnoDb;

/* ****************************************************************************************** */
/* PARA USUARIO DESARROLLADOR
/* ****************************************************************************************** */
CREATE TABLE IF NOT EXISTS usuariodetalle (
    usuariodetalle_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , apellido VARCHAR(50)
    , nombre VARCHAR(50)
    , correoelectronico VARCHAR(250)
    , token TEXT
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS usuario (
    usuario_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(50)
    , nivel INT(1)
    , usuariodetalle INT(11)
    , INDEX (usuariodetalle)
    , FOREIGN KEY (usuariodetalle)
        REFERENCES usuariodetalle (usuariodetalle_id)
        ON DELETE CASCADE
    , configuracionmenu INT(11)
    , INDEX (configuracionmenu)
    , FOREIGN KEY (configuracionmenu)
        REFERENCES configuracionmenu (configuracionmenu_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

INSERT INTO usuariodetalle (usuariodetalle_id, apellido, nombre, correoelectronico, token) VALUES
(1, 'Admin', 'admin', 'admin@admin.com', '4850fc35306cb8590e00564f5462e1bb'),
(2, 'Desarrollador', 'Admin', 'infozamba@gmail.com', '2d646827cffbc42da16cee8033e209d4');

INSERT INTO usuario (usuario_id, denominacion, nivel, usuariodetalle, configuracionmenu) VALUES
(1, 'admin', 3, 1, 2),
(2, 'desarrollador', 9, 2, 1);

/* ****************************************************************************************** */
/* PARA OBJETOS DE CONFIGURACIÓN DE ENTIDAD
/* ****************************************************************************************** */
CREATE TABLE IF NOT EXISTS configuracion (
    configuracion_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , razon_social TEXT
    , domicilio_comercial TEXT
    , cuit BIGINT(20)
    , ingresos_brutos VARCHAR(50)
    , fecha_inicio_actividad DATE
    , punto_venta INT(11)
) ENGINE=InnoDb;

/* ****************************************************************************************** */
/* PARA OBJETOS DE CASOS DE USO 
/* ****************************************************************************************** */

CREATE TABLE IF NOT EXISTS investigadorcategoria (
    investigadorcategoria_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(150)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS universidad (
    universidad_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(150)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS universidadfacultad (
    universidadfacultad_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(150)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS universidadarea (
    universidadarea_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(150)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS lineainvestigacion (
    lineainvestigacion_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(150)
    , traduccion VARCHAR(150)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS sublineainvestigacion (
    sublineainvestigacion_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(150)
    , traduccion VARCHAR(150)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS grupoinvestigacion (
    grupoinvestigacion_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(150)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS investigador (
    investigador_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , fecha DATE
    , nombre TEXT
    , ciudad_residencia TEXT
    , direccion TEXT
    , telefono VARCHAR(50)
    , correoelectronico VARCHAR(50)
    , url_web TEXT
    , cv_ingles VARCHAR(2)
    , autoriza_tratamiento_datos VARCHAR(2)
    , intereses TEXT
    , observacion TEXT
    , investigadorcategoria INT(11)
    , INDEX (investigadorcategoria)
    , FOREIGN KEY (investigadorcategoria)
        REFERENCES investigadorcategoria (investigadorcategoria_id)
        ON DELETE SET NULL
    , lineainvestigacion INT(11)
    , INDEX (lineainvestigacion)
    , FOREIGN KEY (lineainvestigacion)
        REFERENCES lineainvestigacion (lineainvestigacion_id)
        ON DELETE SET NULL
    , sublineainvestigacion INT(11)
    , INDEX (sublineainvestigacion)
    , FOREIGN KEY (sublineainvestigacion)
        REFERENCES sublineainvestigacion (sublineainvestigacion_id)
        ON DELETE SET NULL
    , grupoinvestigacion INT(11)
    , INDEX (grupoinvestigacion)
    , FOREIGN KEY (grupoinvestigacion)
        REFERENCES grupoinvestigacion (grupoinvestigacion_id)
        ON DELETE SET NULL
    , universidad INT(11)
    , INDEX (universidad)
    , FOREIGN KEY (universidad)
        REFERENCES universidad (universidad_id)
        ON DELETE CASCADE
    , universidadfacultad INT(11)
    , INDEX (universidadfacultad)
    , FOREIGN KEY (universidadfacultad)
        REFERENCES universidadfacultad (universidadfacultad_id)
        ON DELETE CASCADE
    , universidadarea INT(11)
    , INDEX (universidadarea)
    , FOREIGN KEY (universidadarea)
        REFERENCES universidadarea (universidadarea_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;















CREATE TABLE IF NOT EXISTS documentotipo (
    documentotipo_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(250)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS provincia (
    provincia_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(250)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS infocontacto (
    infocontacto_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion VARCHAR(150)
    , valor TEXT
) ENGINE=InnoDb;



CREATE TABLE IF NOT EXISTS infocontactocliente (
    infocontactocliente_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , compuesto INT(11)
    , INDEX(compuesto)
    , FOREIGN KEY (compuesto)
        REFERENCES cliente (cliente_id)
        ON DELETE CASCADE
    , compositor INT(11)
    , FOREIGN KEY (compositor)
        REFERENCES infocontacto (infocontacto_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS seccion (
    seccion_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , contenido TEXT
    , imagen VARCHAR(50)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS preguntafrecuente (
    preguntafrecuente_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , pregunta TEXT
    , contenido TEXT
    , fecha DATE
    , hora TIME
    , ubicacion INT(11)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS herramienta (
    herramienta_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , contenido TEXT
    , fecha DATE
    , hora TIME
    , ubicacion INT(11)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS cronograma (
    cronograma_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , contenido TEXT
    , fecha DATE
    , hora TIME
    , ubicacion INT(11)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS comunicado (
    comunicado_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , contenido TEXT
    , fecha DATE
    , hora TIME
    , ubicacion INT(11)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS mesetime (
    mesetime_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , fecha DATE
    , hora TIME
    , ubicacion INT(11)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS escuela (
    escuela_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , rector TEXT
    , asesor TEXT
    , direccion TEXT
    , ciudad TEXT
    , codigopostal VARCHAR(50)
    , provincia INT(11)
    , INDEX (provincia)
    , FOREIGN KEY (provincia)
        REFERENCES provincia (provincia_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS infocontactoescuela (
    infocontactoescuela_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , compuesto INT(11)
    , INDEX(compuesto)
    , FOREIGN KEY (compuesto)
        REFERENCES escuela (escuela_id)
        ON DELETE CASCADE
    , compositor INT(11)
    , FOREIGN KEY (compositor)
        REFERENCES infocontacto (infocontacto_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS equipo (
    equipo_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , asesor VARCHAR(250)
    , numero INT(11)
    , zona INT(11)
    , usuario_id INT(11)
    , escuela INT(11)
    , INDEX (escuela)
    , FOREIGN KEY (escuela)
        REFERENCES escuela (escuela_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS infocontactoequipo (
    infocontactoequipo_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , compuesto INT(11)
    , INDEX(compuesto)
    , FOREIGN KEY (compuesto)
        REFERENCES equipo (equipo_id)
        ON DELETE CASCADE
    , compositor INT(11)
    , FOREIGN KEY (compositor)
        REFERENCES infocontacto (infocontacto_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS integrante (
    integrante_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , documento INT(11)
    , curso VARCHAR(250)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS infocontactointegrante (
    infocontactointegrante_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , compuesto INT(11)
    , INDEX(compuesto)
    , FOREIGN KEY (compuesto)
        REFERENCES integrante (integrante_id)
        ON DELETE CASCADE
    , compositor INT(11)
    , FOREIGN KEY (compositor)
        REFERENCES infocontacto (infocontacto_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS integranteequipo (
    integranteequipo_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , compuesto INT(11)
    , INDEX(compuesto)
    , FOREIGN KEY (compuesto)
        REFERENCES equipo (equipo_id)
        ON DELETE CASCADE
    , compositor INT(11)
    , FOREIGN KEY (compositor)
        REFERENCES integrante (integrante_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS contacto (
    contacto_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , correoelectronico TEXT
    , mensaje TEXT
    , equipo TEXT
    , fecha DATE
    , hora TIME
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS foro (
    foro_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , correoelectronico TEXT
    , contenido TEXT
    , equipo TEXT
    , fecha DATE
    , hora TIME
    , activo INT(1)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS comentario (
    comentario_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , denominacion TEXT
    , correoelectronico TEXT
    , contenido TEXT
    , equipo TEXT
    , fecha DATE
    , hora TIME
    , activo INT(1)
) ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS comentarioforo (
    comentarioforo_id INT(11) NOT NULL 
        AUTO_INCREMENT PRIMARY KEY
    , compuesto INT(11)
    , INDEX(compuesto)
    , FOREIGN KEY (compuesto)
        REFERENCES foro (foro_id)
        ON DELETE CASCADE
    , compositor INT(11)
    , FOREIGN KEY (compositor)
        REFERENCES comentario (comentario_id)
        ON DELETE CASCADE
) ENGINE=InnoDb;