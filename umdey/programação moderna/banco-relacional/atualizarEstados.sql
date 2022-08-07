update estados set nome = 'Maranhão' where sigla = 'MA'

select est.nome from estados est where sigla = 'MA'

update estados 
set nome = 'Paraná', 
  populacao = 11.99
  WHERE sigla = 'PR'

select est.nome, sigla, populacao 
from `estados` est 
WHERE sigla = 'PR'