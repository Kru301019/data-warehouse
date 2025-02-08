SELECT
    T.TransactionNo,
    W.ActionTaken
FROM
    FactWaste W
JOIN
    DimProduct P ON W.ProductCode = P.ProductCode
JOIN
    FactSales S ON S.ProductCode = P.ProductCode
JOIN
    DimTransactionType T ON T.TransactionNO = S.TransactionNo
WHERE
    W.ActionTaken = 'gift';
-- SELECT * FROM dimTransactionType;

/* SELECT
    DE.EmployeeFirstName,
    DE.EmployeeLastName
FROM
    DimEmployee DE
WHERE
    DE.EmployeeFirstName LIKE 'B%'; */

/* SELECT
    SalesAmount,
    ProductType,
    promotionID
FROM
    FactSales
Join 
    DimProduct 
ON
    FactSales.ProductCode = DimProduct.ProductCode; */

/* SELECT DE.EmployeeFirstName, DE.EmployeeLastName,DE.EmployeeActive 
FROM DimEmployee DE
where DE.EmployeeActive = 'Yes';
*/