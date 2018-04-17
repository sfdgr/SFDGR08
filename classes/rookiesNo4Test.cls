@isTest
private class rookiesNo4Test {

	static void Test_getAccountById_blank() {

		Account targetAccount = null;
		targetAccount = rookiesNo3.getAccountById(null);

	}

	static void Test_getAccountById_isNotBlank() {

		Account targetAccount = null;

		Account acc = new Account();
		acc.Name = 'test';
		Insert acc;

		targetAccount = rookiesNo3.getAccountById(acc.Id);

		System.assertEquals(false, targetAccount == null);
		System.assertEquals('test',  targetAccount.Name);

	}

}