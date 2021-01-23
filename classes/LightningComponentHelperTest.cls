@IsTest
public class LightningComponentHelperTest {
    static testMethod void testInsertErrorLog() {
        LightningComponentHelper.insertErrorLog('Test');
        System.assertEquals(1, [SELECT COUNT() FROM Error_Log__c], 'One Error Log should have been created');
    }
}
