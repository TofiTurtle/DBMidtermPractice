-- Datos para type_usuario: Empleados, Clientes, Proveedores y "todos los que requieran un servicio"
INSERT INTO type_usuario (tipo_usuario_id, tipo_usuario) VALUES
(1, 'Cliente'),
(2, 'Empleado'),
(3, 'Proveedor'),
(4, 'Cliente'),
(5, 'Empleado'),
(6, 'Cliente'),
(7, 'Proveedor'),
(8, 'Cliente'),
(9, 'Empleado'),
(10, 'Cliente'),
(11, 'Empleado'),
(12, 'Cliente'),
(13, 'Proveedor'),
(14, 'Empleado'),
(15, 'Cliente');

-- Datos para ciudad: Se usan solo como referencia para la FK
INSERT INTO ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
(101, 'Bogotá', '11001'),
(102, 'Medellín', '05001'),
(103, 'Cali', '76001'),
(104, 'Barranquilla', '08001'),
(105, 'Cartagena', '13001'),
(106, 'Bucaramanga', '68001'),
(107, 'Pereira', '66001'),
(108, 'Manizales', '17001'),
(109, 'Cúcuta', '54001'),
(110, 'Ibagué', '73001'),
(111, 'Santa Marta', '47001'),
(112, 'Pasto', '52001'),
(113, 'Neiva', '41001'),
(114, 'Villavicencio', '50001'),
(115, 'Montería', '23001');

-- Datos para condicion: "condición especial (embarazo, requiere silla de ruedas, adulto mayor, entre otras)"
INSERT INTO condicion (condicion_id, tipo_condicion) VALUES
(201, 'Ninguna'),
(202, 'Adulto Mayor'),
(203, 'Embarazo'),
(204, 'Requiere Silla de Ruedas'),
(205, 'Discapacidad Visual'),
(206, 'Discapacidad Auditiva'),
(207, 'Condición Médica Crónica'),
(208, 'Ninguna'),
(209, 'Adulto Mayor'),
(210, 'Ninguna'),
(211, 'Embarazo'),
(212, 'Ninguna'),
(213, 'Requiere Silla de Ruedas'),
(214, 'Ninguna'),
(215, 'Discapacidad Visual');

-- Datos para usuario: Se usan solo 7 cargos distintos y se repiten
INSERT INTO usuario (usuario_id, nombre, apellido, departamento, cargo, ciudad_id, tipo_usuario_id) VALUES
(1, 'Andrea', 'López', 'Atención Cliente', 'Asesor de Servicio', 101, 2),
(2, 'Benito', 'Molina', 'Logística', 'Despachador', 102, 1),
(3, 'Carla', 'Díaz', 'Compras', 'Jefe de Compras', 103, 3),
(4, 'Daniel', 'Gómez', 'Ventas', 'Ejecutivo de Cuenta', 104, 1),
(5, 'Elena', 'Pérez', 'Soporte', 'Técnico de Soporte', 105, 2),
(6, 'Felipe', 'Soto', 'Logística', 'Recepcionista', 106, 1),
(7, 'Gabriela', 'Torres', 'Compras', 'Analista de Inventario', 107, 3),
(8, 'Héctor', 'Vargas', 'Atención Cliente', 'Asesor de Servicio', 108, 1),
(9, 'Irene', 'Quintero', 'Ventas', 'Ejecutivo de Cuenta', 109, 2),
(10, 'Jorge', 'Ríos', 'Logística', 'Despachador', 110, 1),
(11, 'Karen', 'Blanco', 'Soporte', 'Técnico de Soporte', 111, 2),
(12, 'Luis', 'Castro', 'Ventas', 'Ejecutivo de Cuenta', 112, 1),
(13, 'Mónica', 'Salazar', 'Logística', 'Recepcionista', 113, 3),
(14, 'Néstor', 'Ochoa', 'Atención Cliente', 'Asesor de Servicio', 114, 2),
(15, 'Olga', 'Ruiz', 'Logística', 'Despachador', 115, 1);

-- Datos para condicionUsuario: Relación M:N para condiciones especiales (solo se asigna a algunos)
INSERT INTO condicionUsuario (condicion_id, usuario_id) VALUES
(203, 1),
(202, 4),
(204, 6),
(205, 7),
(202, 8),
(203, 10),
(204, 12),
(206, 15),
(201, 1),
(201, 2),
(201, 3),
(201, 5),
(201, 9),
(201, 11),
(201, 13);


-- Datos para servicio: "despacho, entrega y/o recepción artículos, atención al cliente, consultoría y muchos más"
INSERT INTO servicio (servicio_id, nombre, descripcion, estado) VALUES
(301, 'Despacho Artículos', 'Entrega de pedidos a clientes', 'Activo'),
(302, 'Recepción Artículos', 'Recibo de mercancía de proveedores', 'Activo'),
(303, 'Atención al Cliente', 'Consultas generales y reclamos', 'Activo'),
(304, 'Consultoría de Ventas', 'Asesoría especializada en productos', 'Activo'),
(305, 'Entrega de Documentos', 'Trámite y gestión documental', 'Activo'),
(306, 'Despacho Artículos', 'Entrega de pedidos a clientes', 'Activo'),
(307, 'Consultoría Financiera', 'Asesoría en pagos y facturación', 'Activo'),
(308, 'Atención al Cliente', 'Consultas generales y reclamos', 'Activo'),
(309, 'Recepción Artículos', 'Recibo de mercancía de proveedores', 'Activo'),
(310, 'Consultoría Técnica', 'Soporte y diagnóstico de equipos', 'Activo'),
(311, 'Entrega de Documentos', 'Trámite y gestión documental', 'Activo'),
(312, 'Despacho Artículos', 'Entrega de pedidos a clientes', 'Activo'),
(313, 'Atención al Cliente', 'Consultas generales y reclamos', 'Activo'),
(314, 'Recepción Artículos', 'Recibo de mercancía de proveedores', 'Activo'),
(315, 'Consultoría de Ventas', 'Asesoría especializada en productos', 'Activo');

-- Datos para medio: "todos sus medios de contacto (correo, teléfono, sms, etc)"
INSERT INTO medio (medio_id, tipo_medio) VALUES
(501, 'Correo Electrónico'),
(502, 'SMS'),
(503, 'Teléfono Fijo'),
(504, 'Mensaje App'),
(505, 'Correo Electrónico'),
(506, 'SMS'),
(507, 'Teléfono Móvil'),
(508, 'Mensaje App'),
(509, 'Notificación Web'),
(510, 'Correo Electrónico'),
(511, 'SMS'),
(512, 'Teléfono Fijo'),
(513, 'Mensaje App'),
(514, 'Correo Electrónico'),
(515, 'SMS');



--IMPLEMENTACION DE REGISTRO DE DATOS PARA VIDEO PRACTICA PARCIAL.

-- Datos para turno: Asignación de turnos (se usa el id del empleado como 'encargado' - usuario_id)
INSERT INTO turno (turno_id, fecha, hora_inicio, hora_fin, estado, servicio_id, usuario_id) VALUES
(401, '2025-10-20', '2025-10-20 09:00:00', '2025-10-20 09:30:00', 'Asignado', 303, 1), -- Andrea (Empleado)
(402, '2025-10-20', '2025-10-20 10:00:00', '2025-10-20 10:45:00', 'Completado', 301, 9), -- Irene (Empleado)
(403, '2025-10-20', '2025-10-20 11:00:00', '2025-10-20 11:30:00', 'Cancelado', 302, 14), -- Néstor (Empleado)
(404, '2025-10-21', '2025-10-21 14:00:00', '2025-10-21 15:00:00', 'Asignado', 304, 5), -- Elena (Empleado)
(405, '2025-10-21', '2025-10-21 15:30:00', '2025-10-21 16:00:00', 'Pendiente', 305, 11), -- Karen (Empleado)
(406, '2025-10-22', '2025-10-22 08:30:00', '2025-10-22 09:00:00', 'Asignado', 306, 1), -- Andrea (Empleado)
(407, '2025-10-22', '2025-10-22 11:00:00', '2025-10-22 11:30:00', 'Completado', 307, 9), -- Irene (Empleado)
(408, '2025-10-23', '2025-10-23 09:15:00', '2025-10-23 09:45:00', 'Pendiente', 308, 14), -- Néstor (Empleado)
(409, '2025-10-23', '2025-10-23 10:00:00', '2025-10-23 10:30:00', 'Asignado', 309, 5), -- Elena (Empleado)
(410, '2025-10-24', '2025-10-24 13:00:00', '2025-10-24 13:45:00', 'Pendiente', 310, 11), -- Karen (Empleado)
(411, '2025-10-24', '2025-10-24 14:00:00', '2025-10-24 14:30:00', 'Asignado', 311, 1), -- Andrea (Empleado)
(412, '2025-10-25', '2025-10-25 09:00:00', '2025-10-25 09:30:00', 'Completado', 312, 9), -- Irene (Empleado)
(413, '2025-10-25', '2025-10-25 10:30:00', '2025-10-25 11:00:00', 'Asignado', 313, 14), -- Néstor (Empleado)
(414, '2025-10-26', '2025-10-26 12:00:00', '2025-10-26 12:45:00', 'Pendiente', 314, 5), -- Elena (Empleado)
(415, '2025-10-26', '2025-10-26 15:00:00', '2025-10-26 15:30:00', 'Asignado', 315, 11); -- Karen (Empleado)

-- Datos para notificacion: Notificación de ingreso y obtención de turno
INSERT INTO notificacion (notificacion_id, mensaje, fecha_envio, estado, medio_id, usuario_id) VALUES
(601, 'Bienvenido al sistema LiMar. Su registro fue exitoso.', '2025-10-18', 'Enviado', 501, 1),
(602, 'Turno 402 ha sido completado. Valoración pendiente.', '2025-10-20', 'Entregado', 502, 2),
(603, 'Ingreso al sistema confirmado. Ya puede solicitar turnos.', '2025-10-19', 'Enviado', 503, 3),
(604, 'Su turno 404 ha sido asignado.', '2025-10-21', 'Entregado', 504, 4),
(605, 'Bienvenido al sistema LiMar. Su registro fue exitoso.', '2025-10-18', 'Enviado', 505, 5),
(606, 'Recordatorio: Turno 406 mañana a las 8:30 AM.', '2025-10-21', 'Entregado', 506, 6),
(607, 'Ingreso al sistema confirmado. Ya puede solicitar turnos.', '2025-10-19', 'Enviado', 507, 7),
(608, 'Su turno 408 está pendiente de confirmación.', '2025-10-23', 'Entregado', 508, 8),
(609, 'Bienvenido al sistema LiMar. Su registro fue exitoso.', '2025-10-18', 'Enviado', 509, 9),
(610, 'Turno 410 ha sido asignado. Revise los detalles.', '2025-10-24', 'Entregado', 510, 10),
(611, 'Ingreso al sistema confirmado. Ya puede solicitar turnos.', '2025-10-19', 'Enviado', 511, 11),
(612, 'Recordatorio: Turno 413 a las 10:30 AM.', '2025-10-25', 'Entregado', 512, 12),
(613, 'Bienvenido al sistema LiMar. Su registro fue exitoso.', '2025-10-18', 'Enviado', 513, 13),
(614, 'Su turno 414 está pendiente de confirmación.', '2025-10-26', 'Entregado', 514, 14),
(615, 'Ingreso al sistema confirmado. Ya puede solicitar turnos.', '2025-10-19', 'Enviado', 515, 15);