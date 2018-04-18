@isTest
private class rookiesNo4Test {

	@isTest
	static void Test_getAccountById_blank() {

		Account targetAccount = null;
		targetAccount = rookiesNo3.getAccountById(null);

	}

	@isTest
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