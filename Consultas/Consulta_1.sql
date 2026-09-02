USE facultad;
SELECT * 
FROM profesor
INNER JOIN persona ON profesor.id = persona.id
INNER JOIN departamento ON profesor.departamento_id = departamento.id;