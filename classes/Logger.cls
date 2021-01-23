/**
    @author: Dan Thoreson
    @date: 2021-01-05
    @description: Class for creating Error Log records
**/
public with sharing class Logger {

    public static void insertErrorLog(Exception ex, Id recordId) {
        insert createErrorLog(ex.getStackTraceString(), ex.getMessage(), recordId);
    }

    public static void insertErrorLog(String stackTrace, String message, Id recordId) {
        insert createErrorLog(stackTrace, message, recordId);
    }

    public static Error_Log__c createErrorLog(String stackTrace, String message, Id recordId) {
        return new Error_Log__c(Stack_Trace__c=stackTrace, Message__c=message, Record_Id__c=recordId);
    }
}