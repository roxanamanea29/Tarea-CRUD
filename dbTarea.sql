-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS tareas;

-- Seleccionar la base de datos
USE tareas;

CREATE TABLE tarea (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT,
    realizada VARCHAR(50),
    prioridad VARCHAR(50)
);
INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Completar informe', 'Terminar el informe mensual de ventas', 'Sí', 'Alta');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Revisar correo electrónico', 'Revisar y responder correos electrónicos pendientes', 'No', 'Media');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Completar informe', 'Terminar el informe mensual de ventas', 'Sí', 'Alta');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Revisar correo electrónico', 'Revisar y responder correos electrónicos pendientes', 'No', 'Media');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Organizar documentos', 'Clasificar y archivar los documentos nuevos', 'No', 'Alta');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Llamar a clientes', 'Realizar llamadas de seguimiento a clientes importantes', 'No', 'Alta');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Actualizar software', 'Verificar actualizaciones de software y aplicarlas', 'No', 'Media');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Planificar reunión', 'Organizar detalles para la próxima reunión de equipo', 'No', 'Alta');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Revisar inventario', 'Contar y registrar el inventario actual en el almacén', 'No', 'Baja');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Confirmar citas', 'Confirmar las citas del día siguiente con clientes', 'No', 'Media');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Actualizar base de datos', 'Ingresar los últimos datos recopilados al sistema', 'No', 'Alta');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Enviar presupuestos', 'Preparar y enviar presupuestos a potenciales clientes', 'No', 'Media');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Preparar presentación', 'Crear diapositivas para la presentación de ventas', 'No', 'Alta');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Programar publicaciones', 'Programar publicaciones para redes sociales de la semana', 'No', 'Baja');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Limpiar el espacio de trabajo', 'Ordenar y limpiar el escritorio y áreas comunes', 'No', 'Baja');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Revisar metas del equipo', 'Evaluar el progreso hacia las metas del equipo del mes', 'No', 'Media');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Actualizar contactos', 'Revisar y actualizar la lista de contactos del CRM', 'No', 'Media');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Responder consultas', 'Responder a las consultas de clientes recibidas por email', 'No', 'Media');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Organizar archivo digital', 'Organizar y etiquetar los archivos digitales en la red', 'No', 'Baja');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Revisar protocolos de seguridad', 'Comprobar y actualizar los protocolos de seguridad IT', 'No', 'Alta');

INSERT INTO tarea (nombre, descripcion, realizada, prioridad)
VALUES ('Redactar informe mensual', 'Preparar el informe mensual de resultados del departamento', 'No', 'Alta');



