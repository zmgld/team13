functionality
Feature: Registration page
In order to create psersonal account on the MaxiMarkets website
As a potential user of myAccount
I want to make succesfull registration through register page
@positive1
Background:
 Given Register page is opened on MyAccount
 
 Scenario:
 When I enter '<email>' to the e-mail field
	And I enter '<password>' to the password field
	And I enter '<password>' to the confirm-password field
	And I click on the button Submit
	Then Redirect to MyAccount profile 
    
   Example:
| email                   | password    | confirm password    | message                  |
|                         | qwe123qwe   | qwe123qwe           | \no messages. redirect   |
| <6789984test@gmail.com> |             |                     |to new page as a new user\|
|                         |             |                     |                          |     
@negative2
Background:
 Given Register page is opened on MyAccount
 
 Scenario:
 When I registered '<email>' to the e-mail field
	And I enter '<password>' to the password field
	And I enter '<password>' to the confirm-password field
	And I click on the button Submit
	Then Message about error is appeared
     
   Example:
| email                   | password    | confirm password    | message                  |
|                         | qwe123qqq   | qwe123qqq           | <User with this email is |
| <343243432@i.ua>        |             |                     |    already registered>   |
|                         |             |                     |                          |    