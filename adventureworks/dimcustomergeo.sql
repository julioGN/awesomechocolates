SELECT 
	   c.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] AS [First Name]
      --,[MiddleName]
      ,c.[LastName] AS [Last Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] AS DateFirstPurchase
      --,c.[CommuteDistance]
	  ,g.City AS [Customer City]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] c
  LEFT JOIN dbo.DimGeography g ON g.GeographyKey = c.GeographyKey
  ORDER BY 
	c.CustomerKey ASC
