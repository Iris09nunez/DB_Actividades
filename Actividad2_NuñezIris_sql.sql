/*2º Actividad: Socios activos que NO son jugadores de algún equipo.
SHOW TABLE FROM "inunez268";
USE "inunez268";
SELECT sid, uidinunez268 */
select `so`.`sid` `Nro Socio`,concat_ws(',',`us`.`apellido`,`us`.`nombre`) `Nombre Completo`,
`us`.`dni` `DNI`,`us`.`fNacimiento` `Fecha Nacimiento`,`so`.`fInscripcion` `Fecha Inscrip`,
`us`.`direccion` `Direccion`,
`eq`.`nombre` `Equipo` from (((`usuarios` `us` 
inner join `socios` `so` on(`us`.`id` = `so`.`uid`)) 
inner join `jugadores` `ju` on(`so`.`sid` = `ju`.`sid`)) 
inner join `equipos` `eq` on(`eq`.`eid` = `ju`.`eid`)) where `so`.`activo` = 1 AND `ju`.`jid` IS null