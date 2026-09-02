USE facultad;
SELECT persona.dni as dni, persona.nombre as nombre, persona.apellido as apellido, inscripcion.anio as año, materia.nombre as nombre
FROM alumno
INNER JOIN persona ON alumno.id = persona.id
INNER JOIN inscripcion ON inscripcion.alumno_id = alumno.id
INNER JOIN 	materia ON materia.id  = inscripcion.materia_id
WHERE alumno.id = 209;