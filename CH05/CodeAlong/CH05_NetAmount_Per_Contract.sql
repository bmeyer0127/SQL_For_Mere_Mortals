SELECT EngagementNumber, ContractPrice, CAST((ContractPrice * 0.12) AS DECIMAL(10,2)) AS OurFee,
CAST((ContractPrice - (ContractPrice * 0.12)) AS DECIMAL(10,2)) AS NetAmount
FROM Engagements;