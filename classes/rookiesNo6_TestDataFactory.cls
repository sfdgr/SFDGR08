@isTest
public with sharing class rookiesNo6_TestDataFactory {

	public static List<Account> createAccounts(Integer count) {

		List<Account> accountList = new List<Account>();

		// 外から渡されたcountの数だけレコードを作る
		for (Integer i = 0; i < count; i++) {
			Account account = new Account(Name='accountForTask' + i);
			accountList.add(account);
		}

		return accountList;

	}
}