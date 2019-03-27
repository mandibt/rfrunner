*** Settings ***
Test Setup        Open application    ${browser}
Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/AuctionCalendar.robot
Resource          ../Keywords/AuctionResults.robot
Resource          ../Keywords/Bidfom.robot
Resource          ../Keywords/HomePage.robot
Resource          ../Keywords/OpenAuctions.robot

*** Test Cases ***
Bidform page content
    [Tags]    Smoke
    Navigate on Bid form page
    Verify Top Menu
    Verify Main Menu
    Verify Bid form page title
    Verify Your details table
    Verify Bid table on Bid form page
    Expand and Verify Auction details table
    Expand and Verify Quantity to be awarded (MW) table
    Expand and Verify Gates table on Bid Form Page
    Verify Bid form page Buttons

Submit Confirmation Modal Box
    Navigate on Bid form page
    Enter Data on Bid form page    ${ProductInputBF}    ${LocationInputBF}    ${Volume5_PriceInputBF}    ${Volume50_PriceInputBF}
    Click on Submit button
    Verify Submit Confirmation Model Box

Successfully Submitted Bid form Modal Box
    Navigate on Bid form page
    Enter Data on Bid form page    ${ProductInputBF}    ${LocationInputBF}    ${Volume5_PriceInputBF}    ${Volume50_PriceInputBF}
    Click on Submit button
    Verify Successfully Submited Bid form Modal Box

Cancel pop-up
    Navigate on Bid form page
    Enter Data on Bid form page    ${ProductInputBF}    ${LocationInputBF}    ${Volume5_PriceInputBF}    ${Volume50_PriceInputBF}
    Click on Cancel button on Bid Form page
    Verify Cancel Pop-up

Cancel pop-up navigation
    Navigate on Bid form page
    Enter Data on Bid form page    ${ProductInputBF}    ${LocationInputBF}    ${Volume5_PriceInputBF}    ${Volume50_PriceInputBF}
    Click on Cancel button on Bid Form page
    Click on No button on Cancel pop-up
    Verify that Cancel Pop-up is not displayed
    Click on Cancel button on Bid Form page
    Click on Yes button on Cancel pop-up
    Verify Open Auctions page url

Cancel pop-up navigation when user click on main menu buttons
    Navigate on Bid form page
    Enter Data on Bid form page    ${ProductInputBF}    ${LocationInputBF}    ${Volume5_PriceInputBF}    ${Volume50_PriceInputBF}
    Click on Home main menu button
    Click on Yes button on Cancel pop-up
    Verify Home page url
    Navigate on Bid form page
    Enter Data on Bid form page    ${ProductInputBF}    ${LocationInputBF}    ${Volume5_PriceInputBF}    ${Volume50_PriceInputBF}
    Click on Auction Calendar main menu button
    Click on Yes button on Cancel pop-up
    Verify Auction Calendar page url
    Click on Home main menu button
    Navigate on Bid form page
    Enter Data on Bid form page    ${ProductInputBF}    ${LocationInputBF}    ${Volume5_PriceInputBF}    ${Volume50_PriceInputBF}
    Click on Open Auctions main menu button
    Click on Yes button on Cancel pop-up
    Verify Open Auctions page url
    Click on Home main menu button
    Navigate on Bid form page
    Enter Data on Bid form page    ${ProductInputBF}    ${LocationInputBF}    ${Volume5_PriceInputBF}    ${Volume50_PriceInputBF}
    Click on Auction Results main menu button
    Click on Yes button on Cancel pop-up
    Verify Auction Results page url

Verify Total price calculation
    Navigate on Bid form page
    Enter Data on Bid form page    ${ProductInputBF}    ${LocationInputBF}    ${Volume5_PriceInputBF}    ${Volume50_PriceInputBF}
    Verify Total price calculation

*** Keywords ***
