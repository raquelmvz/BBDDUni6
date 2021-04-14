/* Busca empleados con el mismo nombre que alguno del departamento 122 */
select nomem, numde
from empleados
where nomem = ANY (select nomem from empleados where numde = '122')
	and numde <> 122;

/* Busca empleados cuyo salario sea superior a todos los del departamento 122 */
select concat_ws(' ', nomem, ape1em, ifnull(ape2em,'')) as nombre
from empleados
where salarem > ALL (select salarem from empleados where numde = '122');


/* Busca empleados cuya extension telefonica sea diferente a los del depto 122 */
select concat_ws(' ', nomem, ape1em, ifnull(ape2em,'')) as nombre
from empleados
where extelem NOT IN (select extelem from empleados where numde = '122');

/*** OPERADORES CUANTIFICADORES SON:

SOME ==> ALGUNO

ANY ==> CUALQUIERA

SOME Y ANY SON EQUIVALENTES

ALL ==> TODOS

IN ==> SE ENCUENTRE DENTRO DEL CONJUNTO DE RESULTADOS (QUE COINDIDA CON ALGUNO)

SINTAXIS:

expresion [NOT] =|<>|<|<=|>|>= SOME|ANY|ALL (SUBQUERY)

expresion [NOT] IN (subquery)

numde >= ALL (SUBQUERY)

salarem*0.5 = some (subquery)

avg(salarem) in (subquery)

EQUIVALENCIAS EN EL USO DE LOS OPERADORES CUANTIFICADOS ==>

expresion1 = SOME (subquery)
expresion1 = ANY (subquery)
expresion1 IN (subquery)

OTRA EQUIVALENCIA ==> 

expresion1 <> ALL (subquery)
expresion1 NOT IN (subquery)

