
        -- * BETWEEN  --

    -- ? O between é usado para encontrar valor entre um valor inicial e um valor final.
    -- * Valor BETWEEN mínimo AND máximo;
    -- * É a mesma coisa que dizer : 
    --!Valor >= minimo AND Valor <= maximo;


SELECT coluna1, coluna2
FROM TABELA 
WHERE coluna1 BETWEEN 1 AND 10

SELECT *
FROM Production.Product
WHERE ListPrice NOT between 1000 and 1500;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' and '2010/01/01' 
order by HireDate

