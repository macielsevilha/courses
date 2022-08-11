select 
e.nome as Estado,
c.nome as cidade, 
regiao as regiao
from estados e, cidades c 
WHERE e.id = c.estado_id;

select 
   c.nome as Cidade,
   e.nome as Estado,
   regiao as Região
from estados e 
inner join cidades c 
on e.id = c.estado_id;
