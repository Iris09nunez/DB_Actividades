SELECT de.dsid,eq.nombre,eq.eid,SUM(de.importe)FROM equipos eq
INNER JOIN deudas_equipos de ON eq.eid  =de.dsid
WHERE de.estado = 'pagada'
GROUP BY eq.eid
ORDER BY SUM(de.importe) DESC LIMIT 5;