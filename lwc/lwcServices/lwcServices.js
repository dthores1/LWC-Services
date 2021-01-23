import insertError from "@salesforce/apex/LightningComponentHelper.insertErrorLog";

// Inserts an Error_Log__c record into database
const insertErrorLog = (prefix = "LWC Error", {message, stackTrace}) => {
    // Guard clause to ignore null errors and the standard SF errors for connection timeouts, etc. 
    if(message == null || message.toLowerCase().includes("internal server error") || message.toLowerCase().includes("disconnected")) {
        return;
    }

    insertError({
        errorMessage: `${prefix} ${message} | ${stackTrace}`              
    });
}

export {
    insertErrorLog
}