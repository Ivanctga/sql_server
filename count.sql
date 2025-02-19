-- * COUNT --

SELECT COUNT(DISTINCT coluna1)
FROM tabela

/*

    -- * DESAFIO 1 --
    * Quantos produtos temos cadastrados na tabela produtos (Production.Product)?
    * RESPOSTA: 504
*/
SELECT COUNT(*)
FROM Production.Product

/*
    -- * DESAFIO 2 --
    * Quantos tamanhos de produtos temos cadastrados na tabela produtos (Production.Product)?
    * RESPOSTA: 211
*/
SELECT COUNT(Size)
FROM Production.Product


/*
    -- * DESAFIO 3 --
    * Quantos tamanhos diferentes de produtos temos cadastrados na tabela produtos (Production.Product)?
    * RESPOSTA: 18
*/

SELECT COUNT(DISTINCT Size)
FROM Production.Product