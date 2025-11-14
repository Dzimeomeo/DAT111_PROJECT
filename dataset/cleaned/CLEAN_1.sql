
/*

=== LAM SACH DU LIEU ===

Xóa khoảng trắng thừa (TRIM)

Chuẩn hóa văn bản: viết hoa chữ cái đầu (Gender, Academic_Level…)

Chuẩn hóa Yes/No → dạng đồng nhất (YES/NO)

Giữ nguyên định dạng số thập phân (5,2 → 5,2)

Không thay đổi kiểu dữ liệu (giữ dạng TEXT)


*/

SELECT
    LTRIM(RTRIM(Date)) AS Date,
    LTRIM(RTRIM(Student_ID)) AS Student_ID,
    LTRIM(RTRIM(Age)) AS Age,

    UPPER(LEFT(Gender,1)) + LOWER(SUBSTRING(Gender,2,LEN(Gender))) AS Gender,
    UPPER(LEFT(Academic_Level,1)) + LOWER(SUBSTRING(Academic_Level,2,LEN(Academic_Level))) AS Academic_Level,

    LTRIM(RTRIM(Country)) AS Country,
    LTRIM(RTRIM(Name_Students)) AS Name_Students,

    CASE 
        WHEN ISNUMERIC(LTRIM(RTRIM(Avg_Daily_Usage_Hours))) = 1 AND CAST(LTRIM(RTRIM(Avg_Daily_Usage_Hours)) AS INT) >= 10 
        THEN CAST(CAST(LTRIM(RTRIM(Avg_Daily_Usage_Hours)) AS INT) / 10.0 AS DECIMAL(4,1))
        ELSE CAST(LTRIM(RTRIM(Avg_Daily_Usage_Hours)) AS DECIMAL(4,1))
    END AS Avg_Daily_Usage_Hours,

    LTRIM(RTRIM(Most_Used_Platform)) AS Most_Used_Platform,

    UPPER(LTRIM(RTRIM(Affects_Academic_Performance))) AS Affects_Academic_Performance,

    CASE 
        WHEN ISNUMERIC(LTRIM(RTRIM(Sleep_Hours_Per_Night))) = 1 AND CAST(LTRIM(RTRIM(Sleep_Hours_Per_Night)) AS INT) >= 10 
        THEN CAST(CAST(LTRIM(RTRIM(Sleep_Hours_Per_Night)) AS INT) / 10.0 AS DECIMAL(4,1))
        ELSE CAST(LTRIM(RTRIM(Sleep_Hours_Per_Night)) AS DECIMAL(4,1))
    END AS Sleep_Hours_Per_Night,

    LTRIM(RTRIM(Mental_Health_Score)) AS Mental_Health_Score,
    LTRIM(RTRIM(Relationship_Status)) AS Relationship_Status,
    LTRIM(RTRIM(Conflicts_Over_Social_Media)) AS Conflicts_Over_Social_Media,
    LTRIM(RTRIM(Addicted_Score)) AS Addicted_Score

INTO Social_Media_Clean_1 
FROM dbo.[Students Social Media Addiction];

select * from Social_Media_Clean_1;

