DELIMITER //

CREATE TRIGGER `usuarios_insert2` AFTER INSERT ON `usuarios`
FOR EACH ROW
BEGIN
  INSERT INTO `auditoria_usuarios` (`usuario_id`, `operacion`, `direccion_nueva`, `telefono_nuevo`, `email_nuevo`)
  VALUES (NEW.id, 'INSERT', NEW.direccion, NEW.telefono, NEW.email);
END;

CREATE TRIGGER `usuarios_update2` BEFORE UPDATE ON `usuarios`
FOR EACH ROW
BEGIN
  INSERT INTO `auditoria_usuarios` (`usuario_id`, `operacion`, `direccion_anterior`, `telefono_anterior`,`email_anterior`, `direccion_nueva`, `telefono_nuevo`, `email_nuevo`)
  VALUES (OLD.id, 'UPDATE', OLD.direccion, OLD.telefono, OLD.email, NEW.direccion, NEW.telefono, NEW.email);
END;

//

DELIMITER ;
