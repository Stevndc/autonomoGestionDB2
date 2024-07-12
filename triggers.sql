DELIMITER $$

CREATE TRIGGER trg_insert_bomberos AFTER INSERT ON bomberos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('bomberos', CURRENT_USER(), 'Insertado registro en bomberos'); 
END $$

CREATE TRIGGER trg_update_bomberos AFTER UPDATE ON bomberos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('bomberos', CURRENT_USER(), 'Actualizado registro en bomberos'); 
END $$

CREATE TRIGGER trg_delete_bomberos AFTER DELETE ON bomberos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('bomberos', CURRENT_USER(), 'Eliminado registro en bomberos'); 
END $$

CREATE TRIGGER trg_insert_equipos_estacion AFTER INSERT ON equipos_estacion 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('equipos_estacion', CURRENT_USER(), 'Insertado registro en equipos_estacion'); 
END $$

CREATE TRIGGER trg_update_equipos_estacion AFTER UPDATE ON equipos_estacion 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('equipos_estacion', CURRENT_USER(), 'Actualizado registro en equipos_estacion'); 
END $$

CREATE TRIGGER trg_delete_equipos_estacion AFTER DELETE ON equipos_estacion 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('equipos_estacion', CURRENT_USER(), 'Eliminado registro en equipos_estacion'); 
END $$

CREATE TRIGGER trg_insert_estaciones AFTER INSERT ON estaciones 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('estaciones', CURRENT_USER(), 'Insertado registro en estaciones'); 
END $$

CREATE TRIGGER trg_update_estaciones AFTER UPDATE ON estaciones 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('estaciones', CURRENT_USER(), 'Actualizado registro en estaciones'); 
END $$

CREATE TRIGGER trg_delete_estaciones AFTER DELETE ON estaciones 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('estaciones', CURRENT_USER(), 'Eliminado registro en estaciones'); 
END $$

CREATE TRIGGER trg_insert_intervenciones_emergencia AFTER INSERT ON intervenciones_emergencia 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('intervenciones_emergencia', CURRENT_USER(), 'Insertado registro en intervenciones_emergencia'); 
END $$

CREATE TRIGGER trg_update_intervenciones_emergencia AFTER UPDATE ON intervenciones_emergencia 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('intervenciones_emergencia', CURRENT_USER(), 'Actualizado registro en intervenciones_emergencia'); 
END $$

CREATE TRIGGER trg_delete_intervenciones_emergencia AFTER DELETE ON intervenciones_emergencia 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('intervenciones_emergencia', CURRENT_USER(), 'Eliminado registro en intervenciones_emergencia'); 
END $$

CREATE TRIGGER trg_insert_jornadas_trabajo AFTER INSERT ON jornadas_trabajo 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('jornadas_trabajo', CURRENT_USER(), 'Insertado registro en jornadas_trabajo'); 
END $$

CREATE TRIGGER trg_update_jornadas_trabajo AFTER UPDATE ON jornadas_trabajo 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('jornadas_trabajo', CURRENT_USER(), 'Actualizado registro en jornadas_trabajo'); 
END $$

CREATE TRIGGER trg_delete_jornadas_trabajo AFTER DELETE ON jornadas_trabajo 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('jornadas_trabajo', CURRENT_USER(), 'Eliminado registro en jornadas_trabajo'); 
END $$

CREATE TRIGGER trg_insert_llamada_tipo AFTER INSERT ON llamada_tipo 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('llamada_tipo', CURRENT_USER(), 'Insertado registro en llamada_tipo'); 
END $$

CREATE TRIGGER trg_update_llamada_tipo AFTER UPDATE ON llamada_tipo 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('llamada_tipo', CURRENT_USER(), 'Actualizado registro en llamada_tipo'); 
END $$

CREATE TRIGGER trg_delete_llamada_tipo AFTER DELETE ON llamada_tipo 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('llamada_tipo', CURRENT_USER(), 'Eliminado registro en llamada_tipo'); 
END $$

CREATE TRIGGER trg_insert_llamadas_usuario AFTER INSERT ON llamadas_usuario 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('llamadas_usuario', CURRENT_USER(), 'Insertado registro en llamadas_usuario'); 
END $$

CREATE TRIGGER trg_update_llamadas_usuario AFTER UPDATE ON llamadas_usuario 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('llamadas_usuario', CURRENT_USER(), 'Actualizado registro en llamadas_usuario'); 
END $$

CREATE TRIGGER trg_delete_llamadas_usuario AFTER DELETE ON llamadas_usuario 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('llamadas_usuario', CURRENT_USER(), 'Eliminado registro en llamadas_usuario'); 
END $$

CREATE TRIGGER trg_insert_mantenimiento_tipo AFTER INSERT ON mantenimiento_tipo 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('mantenimiento_tipo', CURRENT_USER(), 'Insertado registro en mantenimiento_tipo'); 
END $$

CREATE TRIGGER trg_update_mantenimiento_tipo AFTER UPDATE ON mantenimiento_tipo 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('mantenimiento_tipo', CURRENT_USER(), 'Actualizado registro en mantenimiento_tipo'); 
END $$

CREATE TRIGGER trg_delete_mantenimiento_tipo AFTER DELETE ON mantenimiento_tipo 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('mantenimiento_tipo', CURRENT_USER(), 'Eliminado registro en mantenimiento_tipo'); 
END $$

CREATE TRIGGER trg_insert_mantenimientos AFTER INSERT ON mantenimientos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('mantenimientos', CURRENT_USER(), 'Insertado registro en mantenimientos'); 
END $$

CREATE TRIGGER trg_update_mantenimientos AFTER UPDATE ON mantenimientos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('mantenimientos', CURRENT_USER(), 'Actualizado registro en mantenimientos'); 
END $$

CREATE TRIGGER trg_delete_mantenimientos AFTER DELETE ON mantenimientos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('mantenimientos', CURRENT_USER(), 'Eliminado registro en mantenimientos'); 
END $$

CREATE TRIGGER trg_insert_materiales AFTER INSERT ON materiales 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('materiales', CURRENT_USER(), 'Insertado registro en materiales'); 
END $$

CREATE TRIGGER trg_update_materiales AFTER UPDATE ON materiales 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('materiales', CURRENT_USER(), 'Actualizado registro en materiales'); 
END $$

CREATE TRIGGER trg_delete_materiales AFTER DELETE ON materiales 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('materiales', CURRENT_USER(), 'Eliminado registro en materiales'); 
END $$

CREATE TRIGGER trg_insert_organizacion_mantenimiento AFTER INSERT ON organizacion_mantenimiento 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('organizacion_mantenimiento', CURRENT_USER(), 'Insertado registro en organizacion_mantenimiento'); 
END $$

CREATE TRIGGER trg_update_organizacion_mantenimiento AFTER UPDATE ON organizacion_mantenimiento 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('organizacion_mantenimiento', CURRENT_USER(), 'Actualizado registro en organizacion_mantenimiento'); 
END $$

CREATE TRIGGER trg_delete_organizacion_mantenimiento AFTER DELETE ON organizacion_mantenimiento 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('organizacion_mantenimiento', CURRENT_USER(), 'Eliminado registro en organizacion_mantenimiento'); 
END $$

CREATE TRIGGER trg_insert_participantes_formaciones AFTER INSERT ON participantes_formaciones 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('participantes_formaciones', CURRENT_USER(), 'Insertado registro en participantes_formaciones'); 
END $$

CREATE TRIGGER trg_update_participantes_formaciones AFTER UPDATE ON participantes_formaciones 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('participantes_formaciones', CURRENT_USER(), 'Actualizado registro en participantes_formaciones'); 
END $$

CREATE TRIGGER trg_delete_participantes_formaciones AFTER DELETE ON participantes_formaciones 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('participantes_formaciones', CURRENT_USER(), 'Eliminado registro en participantes_formaciones'); 
END $$

CREATE TRIGGER trg_insert_participantes_incidencias AFTER INSERT ON participantes_incidencias 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('participantes_incidencias', CURRENT_USER(), 'Insertado registro en participantes_incidencias'); 
END $$

CREATE TRIGGER trg_update_participantes_incidencias AFTER UPDATE ON participantes_incidencias 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('participantes_incidencias', CURRENT_USER(), 'Actualizado registro en participantes_incidencias'); 
END $$

CREATE TRIGGER trg_delete_participantes_incidencias AFTER DELETE ON participantes_incidencias 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('participantes_incidencias', CURRENT_USER(), 'Eliminado registro en participantes_incidencias'); 
END $$

CREATE TRIGGER trg_insert_rangos AFTER INSERT ON rangos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('rangos', CURRENT_USER(), 'Insertado registro en rangos'); 
END $$

CREATE TRIGGER trg_update_rangos AFTER UPDATE ON rangos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('rangos', CURRENT_USER(), 'Actualizado registro en rangos'); 
END $$

CREATE TRIGGER trg_delete_rangos AFTER DELETE ON rangos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('rangos', CURRENT_USER(), 'Eliminado registro en rangos'); 
END $$

CREATE TRIGGER trg_insert_registro_asistencias AFTER INSERT ON registro_asistencias 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('registro_asistencias', CURRENT_USER(), 'Insertado registro en registro_asistencias'); 
END $$

CREATE TRIGGER trg_update_registro_asistencias AFTER UPDATE ON registro_asistencias 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('registro_asistencias', CURRENT_USER(), 'Actualizado registro en registro_asistencias'); 
END $$

CREATE TRIGGER trg_delete_registro_asistencias AFTER DELETE ON registro_asistencias 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('registro_asistencias', CURRENT_USER(), 'Eliminado registro en registro_asistencias'); 
END $$

CREATE TRIGGER trg_insert_reportes_incidencias AFTER INSERT ON reportes_incidencias 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('reportes_incidencias', CURRENT_USER(), 'Insertado registro en reportes_incidencias'); 
END $$

CREATE TRIGGER trg_update_reportes_incidencias AFTER UPDATE ON reportes_incidencias 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('reportes_incidencias', CURRENT_USER(), 'Actualizado registro en reportes_incidencias'); 
END $$

CREATE TRIGGER trg_delete_reportes_incidencias AFTER DELETE ON reportes_incidencias 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('reportes_incidencias', CURRENT_USER(), 'Eliminado registro en reportes_incidencias'); 
END $$

CREATE TRIGGER trg_insert_salidas_emergencia AFTER INSERT ON salidas_emergencia 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('salidas_emergencia', CURRENT_USER(), 'Insertado registro en salidas_emergencia'); 
END $$

CREATE TRIGGER trg_update_salidas_emergencia AFTER UPDATE ON salidas_emergencia 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('salidas_emergencia', CURRENT_USER(), 'Actualizado registro en salidas_emergencia'); 
END $$

CREATE TRIGGER trg_delete_salidas_emergencia AFTER DELETE ON salidas_emergencia 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('salidas_emergencia', CURRENT_USER(), 'Eliminado registro en salidas_emergencia'); 
END $$

CREATE TRIGGER trg_insert_sesiones_formacion AFTER INSERT ON sesiones_formacion 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('sesiones_formacion', CURRENT_USER(), 'Insertado registro en sesiones_formacion'); 
END $$

CREATE TRIGGER trg_update_sesiones_formacion AFTER UPDATE ON sesiones_formacion 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('sesiones_formacion', CURRENT_USER(), 'Actualizado registro en sesiones_formacion'); 
END $$

CREATE TRIGGER trg_delete_sesiones_formacion AFTER DELETE ON sesiones_formacion 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('sesiones_formacion', CURRENT_USER(), 'Eliminado registro en sesiones_formacion'); 
END $$

CREATE TRIGGER trg_insert_tipo_vehiculos AFTER INSERT ON tipo_vehiculos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('tipo_vehiculos', CURRENT_USER(), 'Insertado registro en tipo_vehiculos'); 
END $$

CREATE TRIGGER trg_update_tipo_vehiculos AFTER UPDATE ON tipo_vehiculos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('tipo_vehiculos', CURRENT_USER(), 'Actualizado registro en tipo_vehiculos'); 
END $$

CREATE TRIGGER trg_delete_tipo_vehiculos AFTER DELETE ON tipo_vehiculos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('tipo_vehiculos', CURRENT_USER(), 'Eliminado registro en tipo_vehiculos'); 
END $$

CREATE TRIGGER trg_insert_vehiculos AFTER INSERT ON vehiculos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('vehiculos', CURRENT_USER(), 'Insertado registro en vehiculos'); 
END $$

CREATE TRIGGER trg_update_vehiculos AFTER UPDATE ON vehiculos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('vehiculos', CURRENT_USER(), 'Actualizado registro en vehiculos'); 
END $$

CREATE TRIGGER trg_delete_vehiculos AFTER DELETE ON vehiculos 
FOR EACH ROW 
BEGIN 
    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) 
    VALUES ('vehiculos', CURRENT_USER(), 'Eliminado registro en vehiculos'); 
END $$

DELIMITER ;
