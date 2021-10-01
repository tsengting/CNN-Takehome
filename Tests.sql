/* Top 5 pieces of content */
SELECT Content_Id, COUNT(Content_Id) AS counts
FROM Content_Metadata
GROUP BY Content_Id
ORDER BY counts DESC
LIMIT 5;

/* Aggregations across a rolling 30,60,90 days */
SELECT Content_Id, Content_type,
COUNT(CASE WHEN DATE_DIFF(day,Creation_Date,date) <= 30 THEN Content_id END) as Content_30,
COUNT(CASE WHEN DATE_DIFF(day,Creation_Date,date) <= 60 THEN Content_id END) as Content_60,
COUNT(CASE WHEN DATE_DIFF(day,Creation_Date,date) <= 90 THEN Content_id END) as Content_90
FROM Content_Metadata
GROUP BY Content_Id;

/* Averate user session duration trends */
SELECT Ads_User_Id, AVG(Dwell_Time) AS Duration
FROM Ad_Service_Interaction_Data
GROUP BY Ads_User_Id
ORDER BY Duration DESC;

/* Follow user Journeys for registration conversion */
SELECT *
FROM Registered_Users
ORDER BY Register_Date, Last_Access_Time;

/* Generate user segments based on content */
SELECT P.Ads_Users_Id, P.Content_Id, P.Timestamp, C.Content_Type, C.Creation_Date, C.Related_Media
FROM Page_Impression P LEFT JOIN Content_Metadata C ON P.Content_Id = C.Content_Id
GROUP BY P.Ads_Users_Id
ORDER BY P.Timestamp 

/* Generate dashboards to represent registered vs non-registered users */
/* Registered Users */
SELECT A.Ads_User_Id
FROM Ad_Service_Interaction_Data A LEFT JOIN OAuth_Id_Service O ON A.Ads_User_Id = O.Ads_User_Id LEFT JOIN Registered_Users R ON O.OAuth_Id = R.OAuth_Id
WHERE R.Register_Date IS NOT NULL
/* Non-Registered Users */
SELECT A.Ads_User_Id
FROM Ad_Service_Interaction_Data A LEFT JOIN OAuth_Id_Service O ON A.Ads_User_Id = O.Ads_User_Id LEFT JOIN Registered_Users R ON O.OAuth_Id = R.OAuth_Id
WHERE R.Register_Date IS NULL
