@isTest
private class rookiesNo2Test {

	@isTest
	static void Test_digitCheck_nonprompt() {

		boolean result = false;

		// true
		result = rookiesNo1.digitCheck(0);
		System.assertEquals(true, result);

		// true
		result = rookiesNo1.digitCheck(9);
		System.assertEquals(true, result);

		// false
		result = rookiesNo1.digitCheck(10);
		System.assertEquals(false, result);

		// false
		result = rookiesNo1.digitCheck(11);
		System.assertEquals(false, result);

	}

	@isTest
	static void Test_digitCheck_exception() {

		boolean result = false;

		try{

			// assertException
			result = rookiesNo1.digitCheck(11);
			System.assertEquals(true, result);
		
		}catch(Exception e){
			//エラーでもスルーしたいけどダメ
		}

	}

}