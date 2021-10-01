CREATE TYPE varchararray AS varchar(255) array[varchar(255)];

CREATE TYPE objtyp AS object
(
   c1    integer,
   c2    varchar(255)
);

CREATE TABLE Content_Metadata (Content_Id varchar(255) PRIMARY KEY, Content_Type varchar(255), Creation_Date datetime, Version integer, Body varchararray, 
                               Author varchar(255), Related_Media varchararray);

CREATE TABLE Page_Impression (Content_Id varchar(255), Ads_User_Id varchar(255), Page_URL varchar(255), Session_Id varchar(255), IP_Address varchar(255),
                              TimeStamp datetime, Referrer_URL varchar(255));

CREATE TABLE Ad_Service_Interaction_Data (Ads_User_Id varchar(255) PRIMARY KEY, Ad_Id varchar(255), Ad_X_Position integer, Ad_Y_Position integer, Dwell_Time float, 
                                          Timestamp datetime);

CREATE TABLE OAuth_Id_Service (OAuth_Id varchar(255) PRIMARY KEY, Ads_User_Id varchar(255), OAuth_Provider integer, Timestamp datetime);

CREATE TABLE Registered_Users (User_Id varchar(255) PRIMARY KEY, OAuth_Id varchar(255), Display_Name integer, Preferences objtyp, Status varchar(255), Register_Date date,
                              Last_Access_time datetime);

