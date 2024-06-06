Feature: HOYTS Cinemas website
  Execute login 

Scenario 1: User not registered or entering wrong email or password
  Given the user of HOYTS Cinema with email "jorge.matheus@gmail.com"
    And password "Password123"
  When the user accesses the login page 
    And fills the Email address field with "jorge.matheus@gmail.com"
    And fills the Password field with "123Password"
  Then the site should display "Sorry, that email or password seems to be incorrect. Please try again or contact us."
    And keep the user on the login page.


Scenario 2: Registering a new user without agreeing to the terms
  Given the user is on the HOYTS Cinema registration page
  When the user fills the Email address field with "jorge.matheus@gmail.com"
    And fills the Password field with "Password123"
    And fills the First Name field with "Jorge"
    And fills the Last Name field with "Matheus"
    And selects the Date of Birth with 09/07/1999
    And fills the Phone Number field with "+55 81 99354-70057"
    And fills Post code with 50740350
    And selects the gender option "Male"
    And selects prefered cinema "Northlands"
    And does not check the "I have read and agree to the Terms & Conditions and Privacy Policy"
    And clicks on the CONTINUE button
  Then the site should display "This field is required" 
    And checkbox should turn red
    And keep the user on the registration page with all fields filled.


Scenario 3: Registering a new user agreeing to the terms
  Given the user is on the HOYTS Cinema registration page
  When the user fills the Email address field with "jorge.matheus@gmail.com"
    And fills the Password field with "Password123"
    And fills the First Name field with "Jorge"
    And fills the Last Name field with "Matheus"
    And selects the Date of Birth with "09/07/1999"
    And fills the Phone Number field with "+55 81 99354-70057"
    And fills Post code with 50740350
    And selects the gender option "Male"
    And selects prefered cinema "Northlands"
    And checks the "I have read and agree to the Terms & Conditions and Privacy Policy" checkbox
    And clicks on the CONTINUE button
  Then the site should navigate to the "Become a Reward Member" page
  When the user selects the "HOYTS Rewards Free" option
    And clicks on the CONTINUE button
  Then the site should redirect to the HOYTS Rewards page
    And display the message "Hi Jorge"



Scenario 4: User logs out from the home page
  Given the user is on the home page
  When the user clicks on the profile picture on the upper right side
    And clicks on the sign out button
  Then the user should be logged out
    And keep the user on the home page

