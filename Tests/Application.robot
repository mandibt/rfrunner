*** Settings ***
Test Setup        Open application    ${browser}
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/AuctionCalendar.robot
Resource          ../Keywords/AuctionResults.robot
Resource          ../Keywords/Bidfom.robot
Resource          ../Keywords/HomePage.robot
Resource          ../Keywords/OpenAuctions.robot

*** Test Cases ***
Language navigation
    [Tags]    Smoke
    Select Dutch language
    Verify Dutch language button navigation
    Select German language
    Verify German language button navigation

Main menu navigation
    [Tags]    Smoke
    Navigate to Auction Calendar page
    Verify Auction Calendar page url
    Verify Main Menu
    Click on Open Auctions main menu button
    Verify Open Auctions page url
    Click on Auction Results main menu button
    Verify Auction Results page url
    Click on Home main menu button
    Verify Home page url

Top menu content
    [Tags]    Smoke
    Verify Home page top menu
    Navigate on Open Auctions page
    Verify Top Menu
    Click on Home main menu button
    Verify Home page url
    Click on Language menu button
    Verify Multi Language menu content

Logout
    [Tags]    Smoke
    Navigate on Open Auctions page
    Verify Logout functionality
