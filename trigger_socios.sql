
DELIMITER //

CREATE TRIGGER `socios_insert1` AFTER INSERT ON `socios`
FOR EACH ROW
BEGIN
  INSERT INTO `auditoria_socios` (`socio_id`, `operacion`, `uid_nuevo`, `fInscripcion_nuevo`, `fRenovacion_nuevo`, `fBaja_nuevo`, `emmac_nuevo`, `activo_nuevo`)
  VALUES (NEW.sid, 'INSERT', NEW.uid, NEW.fInscripcion, NEW.fRenovacion, NEW.fBaja, NEW.emmac, NEW.activo);
END;

CREATE TRIGGER `socios_update1` BEFORE UPDATE ON `socios`
FOR EACH ROW
BEGIN
  INSERT INTO `auditoria_socios` (`socio_id`, `operacion`, `uid_anterior`, `uid_nuevo`, `fInscripcion_anterior`, `fInscripcion_nuevo`, `fRenovacion_anterior`, `fRenovacion_nuevo`, `fBaja_anterior`, `fBaja_nuevo`, `emmac_anterior`, `emmac_nuevo`, `activo_anterior`, `activo_nuevo`)
  VALUES (OLD.sid, 'UPDATE', OLD.uid, NEW.uid, OLD.fInscripcion, NEW.fInscripcion, OLD.fRenovacion, NEW.fRenovacion, OLD.fBaja, NEW.fBaja, OLD.emmac, NEW.emmac, OLD.activo, NEW.activo);
END;

//

DELIMITER ;
