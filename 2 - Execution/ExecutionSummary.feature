[- - - TEST PLAN SUMMARY - - -]

Total Test Cases Planned: 14
Total Test Cases Executed: 14
Total Test Cases Passes: 12
Total Test Cases Failed: 2



[- - - TEST EXECUTION DETAILS - - -]

1. User not registered or entering a wrong email or password
 - - Pass
 - - System correctly indentify that email or password is incorrect and display a warning to the user

2. Successfull login:
 - - Pass
 - - User are able to login using the correct credential

3. Registering a new user without agreeing to the terms
 - - Pass
 - - System correctly indentify that the user haven't agreed witht terms and keep the button unavailable and display a warning

4. Registering a user agreeing to the tems
 - - Pass
 - - User is registered using valid inputs on required fields 

5. User logs out from the home page 
 - - Pass
 - - User is able to log out 

6. Password recovery with valid email
 - - Pass
 - - System sends the recover email correctly

7. Password recovery with not registered email
 - - Pass
 - - System correctly identify the email is not registed and display a warning

8. Update profile informations
 - - Pass
 - - System correctly updates all information requested

9. Add a movie to watchlist
 - - Pass
 - - System correctly add the movie to the watchlist

10. View the watchlist
 - - Pass
 - - User is able to view the watchlist correctly

11. Renove a movie from the watchlist
 - - Pass
 - - User is able to remove the movie from watchlist correctly

12. Verify watchlist synchronization between Chrome and Firefox
 - - Failed
 - - System is not able to sync information for the same user when used a different browsers

13. Redirect to the app page on the App Store
 - - Failed
 - - User is not able to access the app on App Store

14. Check movei available at Northland cinema 
 - - Pass
 - - Failed 

 
 

[ - - - DISCUSSION - - -]

The tests were created to focus on the main user flows, like login, registration, password, recovery, managing watchlist.
The mentioned scenarios were created with daily usage in mind, so most of them it's considered critical.
If some of them fail the Bug should be reported as high priotity. The reals defects identified have critical priotity, 
because it affects a whole region of the world, preventing the access of the app verison of the website.
The other one directly impacts users who use multiple browsers, leading to an inconsistent experience and a 
potential loss of trust in the website.
The manual testing phase has been completed and the scenarios planned should be executed daily to ensure a smooth
and funcional user experience, only them will it be possible to keep the quality of the HOYTS Cinema website.
