from playwright.sync_api import sync_playwright
import time


with sync_playwright() as p:
    browser = p.firefox.launch(headless=False)
    page = browser.new_page()
    page.goto("https://www.hoyts.co.nz/")
    time.sleep(3)

    # Step1: Loging to the Website
    page.locator('xpath=//*[@id="header-profile"]/button/span').click()
    page.locator(
        'xpath=//*[@id="login"]/div/div/div/div/div/div/div[3]/div/div/input').click()
    page.fill(
        'xpath=//*[@id="login"]/div/div/div/div/div/div/div[3]/div/div/input', 'j.nikacio@gmail.com')
    page.fill(
        'xpath=//*[@id="login"]/div/div/div/div/div/div/div[4]/div/div/input', 'Recife123')
    page.locator(
        'xpath=//*[@id="login"]/div/div/div/div/div/div/div[5]/div/button').click()
    print('ESTOU AQUI')
    page.wait_for_selector(
        # make sure login was successful
        '#header-profile > div > a > span.header__profile-menu-initials.header__profile-menu-initials--standard')
    print('Achei')

    # Step2: navigate to the Movie page
    page.locator('xpath=//*[@id="dash__nav"]/ul[1]/li[1]/a/span').click()
    print('Clickei')
    time.sleep(3)
    page.locator(
        'xpath=//*[@id="movies"]/div/div/div[1]/ul[1]/li[1]/button/span').click()
    print('clickei now showing')
    page.click('text=The Garfield Movie')
    print('procurando o filme do garfild')
    time.sleep(3)
    page.locator(
        'xpath=//*[@id="main-content"]/div[1]/div[1]/div/div/ul/li[2]/button/span[1]/span/span').click()
    print('apertei para add to watch list')
    time.sleep(15)
