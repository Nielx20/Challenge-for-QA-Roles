Feature: HOYTS Cinemas website
  Execute login 

Scenario: User not registered or entering wrong email or password
  Given the user of HOYTS Cinema with email "jorge.matheus@gmail.com"
    And password "Password123"
  When the user accesses the login page 
    And fills the Email address field with "jorge.matheus@gmail.com"
    And fills the Password field with "123Password"
  Then the site should display "Sorry, that email or password seems to be incorrect. Please try again or contact us."
    And keep the user on the login page.


Scenario: Successfull Login
  Given the user of HOYTS Cinema with email "jorge.matheus@gmail.com"
    And password "Password123"
  When the user accesses the login page 
    And fills the Email address field with "jorge.matheus@gmail.com"
    And fills the Password field with "Password123"
  Then the user should be redirect to the home page
    And keep the user on the home page.


Scenario: Registering a new user without agreeing to the terms
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


Scenario: Registering a new user agreeing to the terms
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
    And display the message "Hi Jorge".



Scenario: User logs out from the home page
  Given the user is on the home page
  When the user clicks on the profile picture on the upper right side
    And clicks on the sign out button
  Then the user should be logged out
    And keep the user on the home page.


Scenario: Password Recovery with Valid Email
  Given the user is on the HOYTS Cinema login page
  When the user clicks on the "Reset password" link
    And fills the Email address field with "jorge.matheus@gmail.com"
    And clicks on the Send reset email button
  Then the site should display "We've sent an email to jorge.matheus@gmail.com with a link to reset your HOYTS Rewards password."
    And keep the user on the Help is on the way! page.


Scenario: Password Recovery with not registered Email
  Given the user is on the HOYTS Cinema login page
  When the user clicks on the "Reset password" link
    And fills the Email address field with "notregistered@gmail.com"
    And clicks on the Send reset email button
  Then the site should display "Sorry, that email or card number couldn't be found. Please try again or contact us"
    And keep the user on the Reset your password page.


Scenario: Update Profile Information
  Given the user is logged in on the HOYTS Cinema website
  When the user accesses the profile page
    And updates the First Name field with "Matheus"
    And updates the Last Name field with "Jorge"
    And updates the Phone Number field with "+55 81 9123456789"
    And clicks on the SAVE MY DETAILS button
  Then the site should display "Thanks, your details have been saved."
    And show the updated information on the profile page


Scenario: Add a movie to the watchlist
  Given the user is logged in on the HOYTS Cinema website 
  When the user accesses the Movie page
    And selects a movie with title "Bad Boys: Ride or Die"
    And clicks on watchlist button
  Then watchlist button shoud turn red 
    And the movie "Bad Boys: Ride or Die" shoudl be added in the user's watchlist


Scenario: View the watchlist
  Given the user is logged in on the HOYTS Cinema website
  When the user accesses their watchlist
  Then the site should display a list of movies in the user's watchlist


Scenario: Remove a movie from the watchlist
  Given the user is logged in on the HOYTS Cinema website
    And the user has "Bad Boys: Ride or Die" in their watchlist
  When the user accesses their watchlist
    And clicks on the watchlist button for the movie "Bad Boys: Ride or Die"
  Then the watchlist button turn black
    And the movie "Bad Boys: Ride or Die" should be removed from user's watchlist
    And keep the user on the watchlist page


Scenario: Verify watchlist synchronization between Chrome and Firefox
  Given the user is logged into the HOYTS Cinema website on both Chrome and Firefox browsers
    And the user adds "The Garfield Movie" to the watchlist using Firefox
  When the user checks the watchlist on Chrome
  Then "The Garfield Movie" should be present in the watchlist on Chrome


Scenario: Redirect to the app page on the App Store
  Given the user is using an iOS mobile device on the home page of the HOYTS Cinema website
  When the user scrolls to the bottom of the page
    And clicks on the "Download on the App Store" button
  Then the user should be redirected to the HOYTS Cinema app on the Apple Store
    And the user should be able to download the app


Scenario: Check movie availability at Northland cinema
  Given the user is on the home page
  When the user selects the hamburger menu
    And clicks on "Session Times"
    And adds the cinema "Northland"
    And chooses the day "MON 10 JUN"
  Then the user should be able to see the movies now showing at Northland cinema for that day

