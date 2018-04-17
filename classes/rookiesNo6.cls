public with sharing class rookiesNo6 {

    public static boolean getSufficientAccounts(List<Account> accounts) {
        if (accounts.size() > 500) {
            return true;
        } else {
            return false;
        }
    }

}
