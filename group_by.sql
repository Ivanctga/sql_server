
        -- * SQL AULA 13 GROUP  --

-- * > O GROUP BY basicamente divide o resultado da sua pesquisa em grupos
-- * > Para cada grupo você pode aplicar uma função de agregação, por exemplo:
--!    -Calcular a soma de itens
--!    -Contar o número de itens naquele grupo    

SELECT coluna1,funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1;

--! EXEMPLO:

SELECT *
FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, Sum (UnitPrice) AS "Soma"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferId,Unitprice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

--* Vamos dizer que eu quero saber quantos cada prosuto foi vendido até hoje

SELECT * FROM Sales.SalesOrderDetail

SELECT ProductId,COUNT(ProductId) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID


--* Vamos dizer que eu quero saber quantos nomes de cada nome temos cadastrado em nosso banco de dados

SELECT FirstName,COUNT(FirstName)
FROM Person.Person
GROUP BY FirstName


--* Na tabela production.product eu quero saber a média de preço para os produtos que são pratas(silver)

SELECT color,AVG(LISTPRICE) "PRECO"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color


/*
    -- * DESAFIO 1 --
    * Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas por MiddleName

    *> dicas tabela person.person
    *>  usar GROUP BY e uma função de agregação
*/

SELECT MiddleName,COUNT(FirstName) AS "Quantidade"
FROM Person.Person
GROUP BY MiddleName

/*
    -- * DESAFIO 2 --
    * Eu preciso saber em média é a quantidade (quantity) de produtos que foram vendidos na loja.

    *> dicas tabela sales.salesorderdetail    
    *>  usar GROUP BY e uma função de agregação
*/
SELECT ProductID, AVG(OrderQty) AS "media"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

/*
    -- * DESAFIO 3 --    
    * Eu preciso saber qual foram as 10 vendas que no total tivemos os maiores valores de vendas(linetotal) por produto do maior valor para o menor

    *> dicas tabela sales.salesorderdetail  
    *>  usar GROUP BY e uma função de agregação
    *> atentar a por o que você está ordenando
*/

SELECT TOP 10 ProductID, SUM(linetotal) 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(linetotal) DESC

/*
    -- * DESAFIO 4 --        
    * Eu preciso saber quantos prosutos e qual é a quantidade média de prosutos temos cadastrado nas nossas ordem de serviço (WorkOrder), agupados por productId

    *> dicas tabela production.workorder
    *>  usar GROUP BY e uma função de agregação    
*/

SELECT ProductID, COUNT(ProductID) AS "contagem", AVG(orderqty) AS "Media"
FROM Production.WorkOrder
GROUP BY ProductID

