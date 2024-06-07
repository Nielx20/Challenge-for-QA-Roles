Test failed: 12. Verify watchlist synchronization between Chrome and Firefox

SUMMARY: Is not possible to sync information for the same user using different browsers
COMPONENT: Triage
PRIORITY: High
DEVICE TESTED: Window PC
WEB BROWSER: Chrome and Firefox


[- - - - - REPRODUCING THE ISSUE - - - - -]

*Initial steps:*
 1- Have a Windows PC;
 2- Have Chrome and Firefox installed.

*Steps to reproduce:*
    1- Access https://www.hoyts.co.nz/;
    2- Login using the same user on Chrome and Firefox;
    3- Using the Firefox go to Movies and add "The Garfield Movie" to the watchlist
    4- Using chrome, check the watchlist;
    5- Observe.

*Actual results:*
    - The system is not able to sync information for the same user when used on different browsers.

*Expected results:*
    - "The Garfield Movie" should be present in the watchlist on Chrome.


[- - - - - ADDITIONAL INFORMATIONS - - - - - ]

*Issue timestamp:* Around 11:53 Device time

*Logs collected:*
    - windows_log.zip

*Videos collected:*
    - [Video_link|https://drive.google.com/file/d/1sy0gEr-uOEfK2SHkjnxmjRhfig5iGj81/view?usp=sharing]

*Comments:*
    - After 30 min the system could not sync the information and this issue is still seen
    - Chrome version: XX.XXXX.XX
    - Firefox version:
    - Windows 11 Home




