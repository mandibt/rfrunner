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
Home page content and navigation
    Verify Home page buttons
    Verify labels on Home page buttons
    Verify Home page top menu
    Click on Auction Calendar button and navigate on Auction Calendar page
    Click on Home main menu button
    Verify Home page url
    Click on Open Auctions button and navigate on Open Auctions page
    Click on Home main menu button
    Verify Home page url
    Click on Auction Results button and navigate on Auction Results page

*** Keywords ***
