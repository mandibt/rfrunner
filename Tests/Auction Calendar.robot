*** Settings ***
Test Setup        Open application    ${browser}
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          /opt/robotframeworkkeywords/AuctionCalendar.robot
Resource          /opt/robotframeworkkeywords/AuctionResults.robot
Resource          /opt/robotframeworkkeywords/Bidfom.robot
Resource          /opt/robotframeworkkeywords/HomePage.robot
Resource          /opt/robotframeworkkeywords/OpenAuctions.robot

*** Variables ***

*** Test Cases ***
Auction Calendar navigation and header content
    Navigate to Auction Calendar page
    Verify Top Menu
    Verify Main Menu
    Verify Auction Calendar table header

Auction Calendar table content
    Navigate to Auction Calendar page
    Click on Auction line with Auction ID FRR-20180503-14:00
    Verify Auction Calendar expanded auction line table content
