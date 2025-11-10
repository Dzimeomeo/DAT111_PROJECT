/*
tạo mới bảng final
thêm tiêu đề cột của bảng clean1 , tạo thêm cột Usage_Category trống ( null ) với định dạng kiểu dữ liệu NVARCHAR 
*/

SELECT TOP 0 *,
       CAST(NULL AS NVARCHAR(20)) AS Usage_Category
INTO Social_Media_Clean_Final
FROM Social_Media_Clean_1;


/*
chuẩn hóa đồng bộ kiểu chữ:
- Gender:	Chuẩn hóa Male / Female (viết hoa chữ cái đầu)
- Academic_Level:	Chuyển về dạng viết hoa chữ đầu (High School, Undergraduate, Graduate)
- Country:	Xóa khoảng trắng, viết hoa chữ đầu
- Relationship_Status:	Chuẩn hóa (Single, In Relationship, Complicated)
- Avg_Daily_Usage_Hours:	Phân loại mức độ ( thấp, trung bình, cao )  
*/
INSERT INTO Social_Media_Clean_Final
SELECT 
    Student_ID,
    Age,
    UPPER(LEFT(Gender,1)) + LOWER(SUBSTRING(Gender,2,LEN(Gender))) AS Gender,
    UPPER(LEFT(Academic_Level,1)) + LOWER(SUBSTRING(Academic_Level,2,LEN(Academic_Level))) AS Academic_Level,
    UPPER(LEFT(Country,1)) + LOWER(SUBSTRING(Country,2,LEN(Country))) AS Country,
    Avg_Daily_Usage_Hours,
    Most_Used_Platform,
	CAST(Affects_Academic_Performance AS INT) AS Affects_Academic_Performance,
    Sleep_Hours_Per_Night,
    Mental_Health_Score,
    CASE 
        WHEN Relationship_Status LIKE '%single%' THEN 'Single'
        WHEN Relationship_Status LIKE '%relationship%' THEN 'In Relationship'
        WHEN Relationship_Status LIKE '%complicated%' THEN 'Complicated'
        ELSE 'Unknown'
    END AS Relationship_Status,
    Conflicts_Over_Social_Media,
    Addicted_Score,
    CASE 
        WHEN Avg_Daily_Usage_Hours > 6 THEN 'High Usage'
        WHEN Avg_Daily_Usage_Hours BETWEEN 3 AND 6 THEN 'Medium Usage'
        ELSE 'Low Usage'
    END AS Usage_Category
FROM Social_Media_Clean_1;

select * from Social_Media_Clean_Final;