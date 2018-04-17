public class rookiesNo2Test {

	static testMethod void Test_digitCheck_nonprompt() {

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

		// Exception
		result = rookiesNo1.digitCheck('test');

	}

}