*** Settings ***
Resource          /opt/robotframeworklocators/AuctionCalendar.robot
Resource          /opt/robotframeworklocators/AuctionResults.robot
Resource          /opt/robotframeworklocators/BidFormPage.robot
Resource          /opt/robotframeworklocators/HomePage.robot
Resource          /opt/robotframeworklocators/OpenAuctions.robot
Library           String
Library           SeleniumLibrary

*** Keywords ***
Verify Open Auctions page url
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/open-auctions

Navigate on Open Auctions page
    Sleep    3
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${OpenAuctionHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/open-auctions

Verify Open Auction table header
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${YearOA}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${YearOA}    Year
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${MonthOA}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MonthOA}    Month
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${AuctionID-OA}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionID-OA}    Auction ID
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${TypeOA}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${TypeOA}    Type
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${FrrQuantityToBeAwarded-OA}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${FrrQuantityToBeAwarded-OA}    FRR quantity to be awarded
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${Upwards-OA}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${Upwards-OA}    Upwards
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${DownwardsOA}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DownwardsOA}    Downwards
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${StatusOA}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${StatusOA}    Status

Click on Auction line with Auction ID FRR-20190501-14:00
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${AuctionLine-OA-FRR-20190501-1400}

Verify Open Auctions expanded auction line table content
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ContractPeriodOA}    Contract period
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${StartOA}    Start
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${EndOA}    End
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ProductsOA}    Products
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DeliveryPeriodOA}    Delivery period
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${SupplierConstraintsOA}    Supplier constraints (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MinimumSC-OA}    Minimum
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MaximumSC-OA}    Maximum
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ToBeAwardedOA}    To be awarded (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MinimumTBA-OA}    Minimum
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${GatesOA}    Gates
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${OpenOA}    Open
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${CloseOA}    Close
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${NotifyOA}    Notify
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${PublishOA}    Publish
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${BidformButton1}    Bid form

Click on Bid form button and navigate on Bid form page
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${BidformButton1}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/bidform

Click on Open Auctions main menu button
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${OpenAuctionsMainMenuButton}
