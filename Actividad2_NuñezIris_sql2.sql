select `so`.`sid` `Nro Socio`,concat_ws(',',`us`.`apellido`,`us`.`nombre`) `Nombre Completo`,
`us`.`dni` `DNI`,`us`.`fNacimiento` `Fecha Nacimiento`,`so`.`fInscripcion` `Fecha Inscrip`,
`us`.`direccion` `Direccion`,
IFNULL(`eq`.`nombre`, 'no tiene equipo')from (((`usuarios` `us` 
inner join `socios` `so` on(`us`.`id` = `so`.`uid`)) 
inner join `jugadores` `ju` on(`so`.`sid` = `ju`.`sid`)) 
LEFT JOIN  `equipos` `eq` ON(`ju`.`eid` IS NULL OR   `eq`.`eid` = `ju`.`eid`)) where `so`.`activo` = 1
ORDER BY so.sid; 