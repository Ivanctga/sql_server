
        -- * SQL AULA 12 MIN, MAX, AVG, SUM  --

-- * > Função de agregação basicamente agregam ou combinam dados de uma ou mais tabelas para fornecer um resultado geral de uma consulta.

--! EXEMPLO:

SELECT TOP 10 sum(linetotal) AS "Soma"
FROM Sales.SalesOrderDetail


SELECT TOP 10 MIN(linetotal) -- MAX E AVG --
FROM Sales.SalesOrderDetail

/*

    -- * DESAFIO 1 --
    *    

*/