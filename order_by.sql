
        -- * ORDER BY  --

SELECT  coluna1, coluna2
FROM TABELA 
ORDER BY coluna1 -- asc/desc --

/*

    -- * DESAFIO 1 --
    * Obter o ProductId dos 10 prosutos mais caros cadastrados no sistema, listando do mais caro para o mais barato.
    * -- DICAS --
    * - Você terá que usar a tabela Production.product
    * - Você tea que usar o ORDER BY E TOP
    * - E para ordenar você terá que usar o ORDER BY ASC OU DESC dependendo de resultado esta buscando    

*/
SELECT Top 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice desc


/*

    -- * DESAFIO 2 --
    * Obter o nome e numero do produto que tem ProductID entre 1~4
    * -- DICAS --
    * - Você terá que usar a tabela Production.product
    * - Você terá que usar o ORDER BY E TOP
    * - E para ordenar você terá que usar o ORDER BY ASC OU DESC dependendo do resultado que está buscando

*/
SELECT TOP 4 name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc


/*

    -- * DESAFIO 3 --
    *    

*/