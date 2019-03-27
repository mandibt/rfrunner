*** Settings ***
Resource          /opt/robotframeworklocators/AuctionCalendar.robot
Resource          /opt/robotframeworklocators/AuctionResults.robot
Resource          /opt/robotframeworklocators/BidFormPage.robot
Resource          /opt/robotframeworklocators/HomePage.robot
Resource          /opt/robotframeworklocators/OpenAuctions.robot
Library           String
Library           SeleniumLibrary

*** Keywords ***
Navigate on Auction Results page
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionResultsHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/auction-results

Click and expand auction line on Auction Results page
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${ExpandAuctionLineAR}

Verify Auction Results tablle header
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${YearAR}    Year
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MonthAR}    Month
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionID-AR}    Auction ID
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${TypeAR}    Type
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${StartContractAR}    Start contract
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${EndContractAR}    End contract
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AllocationStatusAR}    Allocation status
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ResultsAR}    Results

Verify Auction Results expanded auction line table content
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ProductAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ProductAR}    Product
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${LocationAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${LocationAR}    Location
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${DeliveryPeriodAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DeliveryPeriodAR}    Delivery period
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${YourReferenceAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${YourReferenceAR}    Your reference
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${VersionAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${VersionAR}    Version
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ContactAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ContactAR}    Contract
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${VolumeAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${VolumeAR}    Volume (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${PriceAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${PriceAR}    Price
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${HoursAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${HoursAR}    Hours
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${PriceEurMwHourAR}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${PriceEurMwHourAR}    Price (EUR/MW/Hour)

Click on Auction Results main menu button
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionResultsMainMenuButton}

Verify Auction Results page url
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/auction-results
