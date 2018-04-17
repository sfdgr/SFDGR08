@isTest
private class rookiesNo6Test {

	static testMethod void Test_getSufficientAccounts_false_01() {

		boolean result = false;
		List<Account> accountList = new List<Account>();

		// 0件ならfalse
		result = rookiesNo6.getSufficientAccounts(accountList);
		System.assertEquals(false, result);

	}

	static testMethod void Test_getSufficientAccounts_false_02() {

		boolean result = false;
		List<Account> accountList = new List<Account>();

		// メソッドを呼び出すが、0件で指定
		accountList = rookiesNo6_TestDataFactory.createAccounts(0);
		Insert accountList;

		result = rookiesNo6.getSufficientAccounts(accountList);
		System.assertEquals(false, result);

	}

	static testMethod void Test_getSufficientAccounts_false_03() {

		boolean result = false;
		List<Account> accountList = new List<Account>();

		// 境界値・無効値
		accountList = rookiesNo6_TestDataFactory.createAccounts(500);
		Insert accountList;

		result = rookiesNo6.getSufficientAccounts(accountList);
		System.assertEquals(false, result);

	}

	static testMethod void Test_getSufficientAccounts_true() {

		boolean result = false;
		List<Account> accountList = new List<Account>();

		// 境界値・有効値
		accountList = rookiesNo6_TestDataFactory.createAccounts(501);
		Insert accountList;

		result = rookiesNo6.getSufficientAccounts(accountList);
		System.assertEquals(true, result);

	}

}