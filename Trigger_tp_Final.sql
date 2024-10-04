DELIMITER //

CREATE TRIGGER `usuarios_insert` AFTER INSERT ON usuarios
FOR EACH ROW
BEGIN 
    INSERT INTO auditoria_usuarios_Iris (id, `operacion`, `direccion`, `telefono`, `email`)
    VALUES (NEW.id, 'INSERT', NEW.direccion, NEW.telefono, NEW.email);
END;
// 

DELIMITER ;

DELIMITER //

CREATE TRIGGER `usuarios_update` BEFORE UPDATE ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_usuarios_Iris (`id`, `operacion`, `direccion`, `telefono`, `email`)
    VALUES (OLD.id, 'UPDATE', NEW.direccion, NEW.telefono, NEW.email);
END;
//

DELIMITER ;

DELIMITER //

CREATE TRIGGER `socios_insert` AFTER INSERT ON socios
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_socios_Iris (`fInscripcion`, `fRenovacion`, `fBaja`, `emmac`, `activo`)
    VALUES (NEW.fInscripcion, NEW.fRenovacion, NEW.fBaja, NEW.emmac, NEW.activo);
END;
//

DELIMITER ;

DELIMITER //

CREATE TRIGGER `socios_update` BEFORE UPDATE ON socios
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_socios_Iris (`fInscripcion`, `fRenovacion`, `fBaja`, `emmac`, `activo`)
    VALUES (NEW.fInscripcion, NEW.fRenovacion, NEW.fBaja, NEW.emmac, NEW.activo);
END;
//

DELIMITER ;
