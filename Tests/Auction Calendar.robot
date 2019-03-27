*** Settings ***
Test Setup        Open application    ${browser}
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/AuctionCalendar.robot
Resource          ../Keywords/AuctionResults.robot
Resource          ../Keywords/Bidfom.robot
Resource          ../Keywords/HomePage.robot
Resource          ../Keywords/OpenAuctions.robot

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
