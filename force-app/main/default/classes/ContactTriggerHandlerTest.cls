@isTest
public with sharing class ContactTriggerHandlerTest {
    @isTest
    

public static void afterInsertHandlerTest(){
List<Account> testAccounts = new List<Account>();
testAccounts.add(new Account(Name = 'Test 1'));
testAccounts.add(new Account(Name = 'Test2'));

insert testAccounts;

List<Contact> testContacts = new List<Contact>();
testContacts.add(new Contact(LastName = 'Test Contact 1',AccountId=testAccounts[0].Id));
testContacts.add(new Contact(LastName = 'Test Contact 2',AccountId=testAccounts[0].Id));
testContacts.add(new Contact(LastName = 'Test Contact 3',AccountId=testAccounts[0].Id));
testContacts.add(new Contact(LastName = 'Test Contact 4',AccountId=testAccounts[0].Id));
testContacts.add(new Contact(LastName = 'Test Contact 5',AccountId=testAccounts[1].Id));

insert testContacts;

List<Account> accs = [SELECT Id, Active_contacts__c FROM Account];

System.assertEquals(2,accs.size());
System.assertEquals(0,accs[0].Active_contacts__c);
System.assertEquals(0,accs[1].Active_contacts__c);

List<Contact> allContact = [SELECT Id FROM Contact];

System.assertEquals(5,allContact.size());

}
    }

