select 
e.nome as Estado,
c.nome as cidade, 
regiao as regiao
from estados e, cidades c 
WHERE e.id = c.estado_id