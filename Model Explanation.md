We have five tables in the data model.

Table Page_Impression work as fact table as it contains keys (Content_Id and Ads_User_Id) which are primary keys for tables Content_Metadata and Ad_Service_Interaction_Data,
and it has one-to-many relationship to the other two tables.

Table Ad_Service_Interaction_Data has one-to-many relationship to table OAuth_Id_Service, with column Ads_User_Id as common attributes.

Table OAuth_Id_Service has one-to-one relationship to table Registered Users, with column OAuth_Id as common attributes.
