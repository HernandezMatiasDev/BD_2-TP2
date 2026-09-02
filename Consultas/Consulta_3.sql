USE facultad;
SELECT * 
FROM profesor
INNER JOIN persona ON profesor.id = persona.id
INNER JOIN profesor_materia ON profesor_materia.profesor_id = profesor.id
INNER JOIN materia on materia.id = profesor_materia.materia_id;