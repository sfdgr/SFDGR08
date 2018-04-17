public with sharing class rookiesNo5 {

	public static void createAccount(String nm){
		Account acc = new Account(Name = nm);
		insert acc;
	}

}