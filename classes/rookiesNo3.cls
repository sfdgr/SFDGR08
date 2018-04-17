public with sharing class rookiesNo3 {

    public static List<Account> getAccounts() {
        return [SELECT Id FROM Account LIMIT 200];
    }

    public static Account getAccountById(Id recordId) {
        if (recordId == null) {
            return new Account();
        }
        return [
          SELECT
                Id
                , Name
                , Parent.Id
                , Parent.Name
                , Phone
                , Fax
                , BillingState
                , BillingCity
                , BillingStreet
                , BillingLatitude
                , BillingLongitude
            FROM
                Account
            WHERE
                Id =: recordId
        ];
    }
}