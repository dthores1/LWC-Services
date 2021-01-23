/**
    @author: Dan Thoreson
    @date: 2021-01-05
    @description: Utility methods for lightning components
    @test class: LightningComponentHelperTest
**/
public inherited sharing class LightningComponentHelper {
    
    @AuraEnabled
    public static void insertErrorLog(String message) {
        Logger.insertErrorLog('LWC Error', message, UserInfo.getUserId());
    }

}
