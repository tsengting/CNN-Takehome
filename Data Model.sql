create type varchararray as varchar(255) array[varchar(255)];

create table Content_Metadata (Content_Id varchar(255), Content_Type varchar(255), Creation_Date datetime, Version integer, Body varchararray, 
Author varchar(255), Related_Media varchararray);

create table Page_Impression (Content_Id varchar(255), Ads_User_Id varchar(255), Page_URL varchar(255), Session_Id varchar(255), IP_Address varchar(255),
TimeStamp datetime, Referrer_URL varchar(255));

create table Ad_Service_Interaction_Data (Ads_User_Id varchar(255), Ad_Id varchar(255), Ad_X_Position integer, Ad_Y_Position integer, Dwell_Time float, 
Timestamp datetime);

create table OAuth_Id_Service (OAuth_Id varchar(255), Ads_User_Id varchar(255), OAuth_Provider integer, Timestamp datetime);

create table Registered_Users (User_Id varchar(255), OAuth_Id varchar(255), Display_Name integer, Preferences )

