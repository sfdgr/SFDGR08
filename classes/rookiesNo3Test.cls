@isTest
private class rookiesNo3Test {

	static void Test_getAccounts_ok() {

		List<Account> accountList = new List<Account>();

		// 何もレコードのINSERTをしていないので0件になるはず
		// seeAllDataを付けていないので、このデモ組織の既存レコードはテストクラスからは見えない＝0件になる
		accountList = rookiesNo3.getAccounts();
		System.assertEquals(true, accountList.isEmpty());

		// テストレコードを作成
		// 厳密には一度SF上にレコードが作られるが、@isTestでテストコード扱いになっているので、Insertしてもテスト完了後ロールバック扱いになる
		Account acc = new Account();
		acc.Name = 'test';
		Insert acc;

		accountList = rookiesNo3.getAccounts();
		System.assertEquals(false, accountList.isEmpty());
		System.assertEquals(1, accountList.size());

	}

}