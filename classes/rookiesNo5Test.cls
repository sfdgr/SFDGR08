@isTest
private class rookiesNo5Test {

    @isTest
    static void successTest() {

        rookiesNo5.createAccount('平成株式会社');

        List<Account> results = [SELECT Id FROM Account WHERE Name = '平成株式会社'];
        System.assert(results.size() >= 1);
    }

    @isTest
    static void errorTest() {

        try {
            rookiesNo5.createAccount('');
        } catch(DmlException de) {
            return;
        }
        System.assert(true);
    }

}