public with sharing class rookiesNo5 {

    public static boolean getSufficientAccounts(List<Account> accounts) {
        if (accounts.size() > 500) {
            return true;
        } else {
            return false;
        }
    }

}
