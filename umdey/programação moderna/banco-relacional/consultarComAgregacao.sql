select 
  regiao as 'Região',
  sum(populacao) as Total
  from `estados`
  GROUP BY regiao
  order by Total desc

  select 
    avg(populacao) as Total
  from `estados`
  