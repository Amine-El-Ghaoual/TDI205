Select * From Employ� where salaire> ANY(Select MAX (salaire) from
Employ� GROUP BY ville);