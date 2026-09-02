USE facultad;
SELECT persona.id as id, persona.dni as dni, persona.nombre as nombre, persona.apellido as apellido, COUNT(inscripcion.nota) as "cantidad de materias cursadas"
FROM alumno
INNER JOIN persona ON alumno.id = persona.id
INNER JOIN inscripcion ON inscripcion.alumno_id = alumno.id
WHERE inscripcion.nota IS NOT NULL
GROUP BY persona.dni, persona.nombre, persona.apellido
ORDER BY COUNT(inscripcion.nota) DESC;