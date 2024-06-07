
from playwright.sync_api import sync_playwright
import time

with sync_playwright() as p:
    browser = p.firefox.launch(headless=False)
    page = browser.new_page()
    page.goto("https://www.hoyts.co.nz/")
    time.sleep(3)

    # Step1: Loging to the Website
    page.locator('id=header-profile').click()
    time.sleep(3)
    page.fill(
        # Input email address
        'xpath=//*[@id="login"]/div/div/div/div/div/div/div[3]/div/div/input', 'j.nikacio@gmail.com')
    page.fill(
        # Input Password
        'xpath=//*[@id="login"]/div/div/div/div/div/div/div[4]/div/div/input', 'Recife123')
    page.click('.form-button--full')  # Using CSS selector
    time.sleep(2)

    # Make sure login was successfull
    page.wait_for_selector('.header__profile-menu-avatar')

    # Step2: Navigate to the Movie page
    page.click('text=Movies')
    time.sleep(3)
    page.click('text=The Garfield Movie')
    time.sleep(3)

    # Step 3 - Add to the watchlist
    # CSS watchlist button on movie page
    page.click('.actions__item-button--watchlist')
    time.sleep(6)

    # Step 4 - Verify if the movie has been added to the watchlist
    page.query_selector('.header__profile-menu-avatar').hover()
    time.sleep(2)
    page.click('text=My Watchlist')

    # Verify if the movie is present
    page.wait_for_selector('text=The Garfield Movie')
    time.sleep(10)
