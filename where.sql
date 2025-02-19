 -- * WHERE --

SELECT coluna1, coluna2, coluna3
FROM tabela
WHERE coluna1 = 1 AND coluna2 = 2

/* 
 *    OPERADOR  - DESCRIÇÃO
  *   =         - Igual
  *   <>        - Diferente
  *   >         - Maior  
  *   <         - Menor
  *   >=        - Maior ou igual
  *   <=        - Menor ou igual
  *   AND       - OPERADOR LÓGICO E
  *   OR        - OPERADOR LÓGICO OU
  *   NOT       - OPERADOR LÓGICO NÃO

  -- * DESAFIO 1 --
  * A equipe de produção de prosutos precisa do nome de todos as peças que pesam mais de  500kg e até 700kg para inspeção (peso = wight)
*/
SELECT Name
FROM Production.Product
WHERE Weight > 500 AND Weight <= 700

/*
  -- * DESAFIO 2 --
  * Foi pedido pelo marketing um lista de todos os empregados(employees) que são casados (maritalstatus = m / single = solte, married = casado) e são asalariados(salaried)
*/

  SELECT *
  FROM HumanResources.Employee
  WHERE MaritalStatus = 'M' AND SalariedFlag = 1

/*
  -- * DESAFIO 3 --
  * Um cliente chamado Peter Krebs está devendo um pagamento, consiga e email dele para que possamos enviar uma cobrança.( você vai ter que usar a tabela person.person e depois a tabela person.emailaddress)
*/

  SELECT *
  FROM Person.Person
  WHERE FirstName = 'Peter' AND LastName = 'Krebs'

  SELECT *
  FROM Person.EmailAddress
  WHERE BusinessEntityID = 26