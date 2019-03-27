*** Settings ***
Resource          ../Locators/AuctionCalendar.robot
Resource          ../Locators/AuctionResults.robot
Resource          ../Locators/BidFormPage.robot
Resource          ../Locators/HomePage.robot
Resource          ../Locators/OpenAuctions.robot
Library           String
Library           SeleniumLibrary

*** Keywords ***
Verify Auction Calendar page url
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/auction-calendar

Navigate to Auction Calendar page
    Sleep    3
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionCalendarHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/auction-calendar

Verify Auction Calendar table header
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${YearAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${YearAuctionCalendar}    Year
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${MonthAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MonthAuctionCalendar}    Month
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${AuctionIDAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionIDAuctionCalendar}    Auction ID
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${TypeAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${TypeAuctionCalendar}    Type
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${FrrQuantityToBeAwardedAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${FrrQuantityToBeAwardedAuctionCalendar}    FRR quantity to be awarded
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${UpwardsAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${UpwardsAuctionCalendar}    Upwards
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${DownwardsAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DownwardsAuctionCalendar}    Downwards
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${StatusAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${StatusAuctionCalendar}    Status

Verify Auction Calendar expanded auction line table content
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ContractPeriodAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ContractPeriodAuctionCalendar}    Contract period
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${StartAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${StartAuctionCalendar}    Start
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${EndAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${EndAuctionCalendar}    End
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ProductsAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ProductsAuctionCalendar}    Products
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${DeliveryPeriodAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DeliveryPeriodAuctionCalendar}    Delivery period
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${SupplierConstraintsAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${SupplierConstraintsAuctionCalendar}    Supplier constraints (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${Minimum-SC-AuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${Minimum-SC-AuctionCalendar}    Minimum
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${Maximum-SC-AuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${Maximum-SC-AuctionCalendar}    Maximum
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ToBeAwardedAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ToBeAwardedAuctionCalendar}    To be awarded (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${Minimum-TBA-AuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${Minimum-TBA-AuctionCalendar}    Minimum
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${GatesAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${GatesAuctionCalendar}    Gates
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${OpenAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${OpenAuctionCalendar}    Open
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${CloseAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${CloseAuctionCalendar}    Close
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${NotifyAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${NotifyAuctionCalendar}    Notify
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${PublishAuctionCalendar}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${PublishAuctionCalendar}    Publish

Click on Auction line with Auction ID FRR-20180503-14:00
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionLine-AC-FRR-20180503-1400}

Click on Auction Calendar main menu button
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionCalendarMainMenuButton}
