Select * From Employ� where salaire< All(select MAX (salaire) from
Employ� GROUP BY ville) ;