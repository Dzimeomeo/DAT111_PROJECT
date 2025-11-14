SELECT DISTINCT 
	FORMAT(CAST(Date AS DATE), 'dd-MM-yyyy') AS Date,
    CAST(Student_ID AS INT) AS Student_ID,
    CAST(Age AS INT) AS Age,

    Gender,
    Academic_Level,
    Country,
    Name_Students,

    CAST(Avg_Daily_Usage_Hours AS DECIMAL(5,1)) AS Avg_Daily_Usage_Hours,
    Most_Used_Platform,

	CAST(Affects_Academic_Performance AS INT) AS Affects_Academic_Performance,

    CAST(Sleep_Hours_Per_Night AS DECIMAL(5,1)) AS Sleep_Hours_Per_Night,

    CAST(Mental_Health_Score AS INT) AS Mental_Health_Score,
    Relationship_Status,

    CAST(Conflicts_Over_Social_Media AS INT) AS Conflicts_Over_Social_Media,
    CAST(Addicted_Score AS INT) AS Addicted_Score

INTO Social_Media_Clean_Final   
FROM Social_Media_Clean_1;

select * from Social_Media_Clean_Final;


