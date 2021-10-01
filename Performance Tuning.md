Since table Page_Impression and Ad_Service_Interaction_Data have TB level data volume, we can create non-clustered index in them.

For example, on table Page_Impression, we create an non-clustered index on Content_Id Ads_User_Id like below:

CREATE NONCLUSTERED INDEX IX_tblPage_Content
ON Page_Impression(Content_Id ASC);

CREATE NONCLUSTERED INDEX IX_tblPage_AdsUser
ON Page_Impression(Ads_User_Id ASC);

On table Ad_Service_Interaction_Data, we create an non-clustered index on Ad_Id like below:
CREATE NONCLUSTERED INDEX IX_tblAds_Ad
ON Ad_Service_Interaction_Data(Ad_Id ASC);
