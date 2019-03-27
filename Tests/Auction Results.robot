*** Settings ***
Test Setup        Open application    ${browser}
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          /opt/robotframeworkkeywords/AuctionCalendar.robot
Resource          /opt/robotframeworkkeywords/AuctionResults.robot
Resource          /opt/robotframeworkkeywords/Bidfom.robot
Resource          /opt/robotframeworkkeywords/HomePage.robot
Resource          /opt/robotframeworkkeywords/OpenAuctions.robot
Resource          /opt/robotframeworkkeywords/AuctionCalendar.robot
Resource          /opt/robotframeworkkeywords/AuctionResults.robot
Resource          /opt/robotframeworkkeywords/Bidfom.robot
Resource          /opt/robotframeworkkeywords/HomePage.robot
Resource          /opt/robotframeworkkeywords/OpenAuctions.robot

*** Test Cases ***
Auction results table header content
    Navigate on Auction Results page
    Verify Top Menu
    Verify Main Menu
    Verify Auction Results tablle header

Auction results auction line header content
    Navigate on Auction Results page
    Click and expand auction line on Auction Results page
    Verify Auction Results expanded auction line table content
