functionality
Feature: Registration page
In order to create psersonal account on the MaxiMarkets website
As a potential user of myAccount
I want to make succesfull registration through register page

Background:
 Given Register page is opened on MyAccount
@positive1
 
 Scenario: Registration with valid data
 When I enter '<email>' to the e-mail field
	And I enter '<password>' to the password field
	And I enter '<password>' to the confirm-password field
	And I click on the button Submit
	Then Redirect to MyAccount profile 
    
   Example:
| email                   | password    | confirm password    | message                  |
|6789984test@gmail.com    | qwe123qwe   | qwe123qwe           | \no messages. redirect   |
|                         |             |                     |to new page as a new user\|
|                         |             |                     |                          |     
@negative1

 
 Scenario: Registration with email, that already registered in system
 When I registered '<email>' to the e-mail field
	And I enter '<password>' to the password field
	And I enter '<password>' to the confirm-password field
	And I click on the button Submit
	Then Message about error is appeared
     
   Example:
| email                   | password    | confirm password    | message                  |
| 343243432@i.ua          | qwe123qqq   | qwe123qqq           |  User with this email is |
|                         |             |                     |    already registered    |
|                         |             |                     |                          |    
@negative2
Scenario: Registration with empty fields
 When I enter '<email>' to the e-mail field
	And I enter '<password>' to the password field
	And I enter '<password>' to the confirm-password field
	And I click on the button Submit
    Then Message about error is appeared
     
   Example:
|       email             | password    | confirm password    | message               |
|                         |             |                     |  Enter email and      |
|                         |             |                     |    password           |



@negative3
Scenario: Registration without confirm password
 When I enter '<email>' to the e-mail field
	And I enter '<password>' to the password field
	And I enter '<password>' to the confirm-password field
	And I click on the button Submit
    Then Message about error is appeared
     
   Example:
|       email             | password    | confirm password    | message               |
|                         |             |                     | <confirm password>    |
| sudack1996@mail.com     |   qwe123    |                     |                       |
