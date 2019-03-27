*** Settings ***
Resource          /opt/robotframeworklocators/AuctionCalendar.robot
Resource          /opt/robotframeworklocators/AuctionResults.robot
Resource          /opt/robotframeworklocators/BidFormPage.robot
Resource          /opt/robotframeworklocators/HomePage.robot
Resource          /opt/robotframeworklocators/OpenAuctions.robot
Library           String
Library           SeleniumLibrary

*** Keywords ***
Open Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Go To    ${PAGE URL}

Open Firefox
    ${firefox options}=    Evaluate    sys.modules['selenium.webdriver'].firefox.webdriver.Options()    sys, selenium.webdriver
    Call Method    ${firefox options}    add_argument    -headless
    Create Webdriver    Firefox    firefox_options=${firefox options}
    Set Window Size    1920    1080
    Go To    ${PAGE URL}
    Page Should Be Open

Open IE
    #${ie_options}=    Evaluate    sys.modules['selenium.webdriver'].DesiredCapabilities.INTERNETEXPLORER    sys, selenium.webdriver
    #Call Method    ${ie_options}    add_argument    test-type
    Create Webdriver    Ie    #capabilities=${ie_options}
    Set Window Size    1920    1080
    Go To    ${PAGE URL}

Verify Home page url
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/home

Open application
    [Arguments]    ${browser}
    Run keyword if    '${browser}'=='chrome'    Open Chrome
    Run keyword if    '${browser}'=='firefox'    Open Firefox
    Run keyword if    '${browser}'=='ie'    Open IE

Verify Main Menu
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${HomeButtonMainMenu}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${AuctionCalendarMainMenuButton}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${OpenAuctionsMainMenuButton}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${AuctionResultsMainMenuButton}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${HomeButtonMainMenu}    Home
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionCalendarMainMenuButton}    Auction Calendar
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${OpenAuctionsMainMenuButton}    Open Auctions
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionResultsMainMenuButton}    Auction Results

Verify Top Menu
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${UserInfo}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${TopMenuHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${LanguageMenu}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${LogoutButton}

Verify Home page buttons
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${AuctionCalendarHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${OpenAuctionHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${AuctionResultsHomePageButton}

Verify labels on Home page buttons
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionCalendarHomePageButton}    Auction Calendar
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${OpenAuctionHomePageButton}    Open Auctions
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionResultsHomePageButton}    Auction Results

Click on Auction Calendar button and navigate on Auction Calendar page
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionCalendarHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/auction-calendar

Click on Auction Results button and navigate on Auction Results page
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionResultsHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/auction-results

Click on Open Auctions button and navigate on Open Auctions page
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${OpenAuctionHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/open-auctions

Click on Home button and navigate on Home page
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${HomeButtonMainMenu}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/home

Verify Home page top menu
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${UserInfo}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${LanguageMenu}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${LogoutButton}

Click on Home main menu button
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${HomeButtonMainMenu}

Verify Logout functionality
    Wait Until Keyword Succeeds    20s    3s    Click Element    id:logout-icon
    Sleep    3
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://t-my.tennet.eu/

Verify Multi Language menu content
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${EnglishLanguageButton}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${DutchLanguageButton}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${GermanLanguageButton}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${EnglishLanguageButton}    English
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DutchLanguageButton}    Nederlands
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${GermanLanguageButton}    Deutsch

Verify German language button navigation
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${SupplierNameBF}    Lieferanten name
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${HomeButtonMainMenu}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${OpenAuctionHomePageButton}    Offene Auktionen
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionCalendarHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MonthAuctionCalendar}    Monat
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${OpenAuctionsMainMenuButton}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${TypeOA}    Art
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionResultsMainMenuButton}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${StartContractAR}    Vertragsbeginndatum

Select German language
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${LanguageMenu}
    Wait Until Element Is Visible    ${GermanLanguageButton}
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${GermanLanguageButton}

Verify Dutch language button navigation
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionCalendarHomePageButton}    Veilingkalender
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionCalendarHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${FrrQuantityToBeAwardedAuctionCalendar}    FRR toe te kennen hoeveelheid
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${OpenAuctionsMainMenuButton}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DownwardsOA}    Afregelen
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionResultsMainMenuButton}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${EndContractAR}    Einde contract
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${OpenAuctionsMainMenuButton}
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${BidformButton1}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${SupplierNameBF}    Naam leverancier

Select Dutch language
    Wait Until Element Is Visible    ${LanguageMenu}
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${LanguageMenu}
    Wait Until Element Is Visible    ${GermanLanguageButton}
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${DutchLanguageButton}

Click on Language menu button
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${LanguageMenu}
