*** Settings ***
Test Setup        Open application    ${browser}
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/AuctionCalendar.robot
Resource          ../Keywords/AuctionResults.robot
Resource          ../Keywords/Bidfom.robot
Resource          ../Keywords/HomePage.robot
Resource          ../Keywords/OpenAuctions.robot
Resource          ../Keywords/AuctionCalendar.robot
Resource          ../Keywords/AuctionResults.robot
Resource          ../Keywords/Bidfom.robot
Resource          ../Keywords/HomePage.robot
Resource          ../Keywords/OpenAuctions.robot

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
