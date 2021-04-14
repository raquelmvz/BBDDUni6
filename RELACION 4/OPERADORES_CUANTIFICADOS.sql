/* Busca empleados con el mismo nombre que alguno del departamento 122 */

/* Busca empleados cuyo salario sea superior a todos los del departamento 122 */

/* Busca empleados cuya extension telefonica sea diferente a los del depto 122 */

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
