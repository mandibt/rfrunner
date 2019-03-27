*** Settings ***
Test Setup        Open application    ${browser}
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          /opt/robotframeworkkeywords/AuctionCalendar.robot
Resource          /opt/robotframeworkkeywords/AuctionResults.robot
Resource          /opt/robotframeworkkeywords/Bidfom.robot
Resource          /opt/robotframeworkkeywords/HomePage.robot
Resource          /opt/robotframeworkkeywords/OpenAuctions.robot

*** Test Cases ***
Open Auctions header content
    Navigate on Open Auctions page
    Verify Main Menu
    Verify Top Menu
    Verify Open Auction table header

Open auctions auction line conttent
    Navigate on Open Auctions page
    Click on Auction line with Auction ID FRR-20190501-14:00
    Verify Open Auctions expanded auction line table content
    Click on Bid form button and navigate on Bid form page

*** Keywords ***
