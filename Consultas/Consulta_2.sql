USE facultad;
SELECT * 
FROM alumno
INNER JOIN persona ON alumno.id = persona.id
INNER JOIN inscripcion ON inscripcion.alumno_id = alumno.id
INNER JOIN 	materia ON materia.id  = inscripcion.materia_id;