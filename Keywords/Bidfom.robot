*** Settings ***
Resource          /opt/robotframeworklocators/AuctionCalendar.robot
Resource          /opt/robotframeworklocators/AuctionResults.robot
Resource          /opt/robotframeworklocators/BidFormPage.robot
Resource          /opt/robotframeworklocators/HomePage.robot
Resource          /opt/robotframeworklocators/OpenAuctions.robot
Library           String
Library           SeleniumLibrary

*** Keywords ***
Navigate on Bid form page
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${OpenAuctionHomePageButton}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/open-auctions
    Sleep    3
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${BidformButton1}
    Wait Until Keyword Succeeds    20s    3s    Location Should Be    https://www.apfas-test.nl/Apfas-Fe/bidform

Click on No button on Cancel pop-up
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${NoButtonCPU}

Click on Yes button on Cancel pop-up
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${YesButtonCPU}

Verify Cancel Pop-up
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${TitleCPU}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${TitleCPU}    Cancel bid entry
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${MessageCPU}
    ${modalsubtitle}=    get text    ${MessageCPU}
    ${modalsubtitlel1}=    Get Line    ${modalsubtitle}    0
    ${modalsubtitlel2}=    Get Line    ${modalsubtitle}    1
    Wait Until Keyword Succeeds    20s    3s    Should Be Equal As Strings    ${modalsubtitlel1}    Are you sure that you want to leave the page?
    Wait Until Keyword Succeeds    20s    3s    Should Be Equal As Strings    ${modalsubtitlel2}    All data entered will be lost.
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${YesButtonCPU}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${YesButtonCPU}    Yes
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${NoButtonCPU}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${NoButtonCPU}    No

Verify Bid form page title
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${BiddformTitle}    Bid form

Verify Your details table
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${YourDetailsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${YourDetailsBF}    Your details
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${SupplierNameBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${SupplierNameBF}    Supplier name
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ContactBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ContactBF}    Contact
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${YourReferenceBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${YourReferenceBF}    Your reference
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ProductBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ProductBF}    Product *
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${LocationBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${LocationBF}    Location *

Verify Bid table on Bid form page
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${BidBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${BidBF}    Bid
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${PleaseEnterYourBidsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${PleaseEnterYourBidsBF}    Please enter your bid(s)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${VolumeBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${VolumeBF}    Volume (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${PriceBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${PriceBF}    Price (EUR/MW/Hour)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${TotalPriceBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${TotalPriceBF}    Total price (EUR)

Expand and Verify Auction details table
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${AuctionID-BF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${ContractStartBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${ContractEndBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${ContractHoursBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${DeliveryPeriodBF}
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${ClickOnAuctionDetailsHeader}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${AuctionDetailsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionDetailsBF}    Auction details
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${AuctionID-BF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionID-BF}    Auction ID
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ContractStartBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ContractStartBF}    Contract start
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ContractEndBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ContractEndBF}    Contract end
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ContractHoursBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ContractHoursBF}    Contract hours
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${DeliveryPeriodBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DeliveryPeriodBF}    Delivery period

Expand and Verify Quantity to be awarded (MW) table
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${UpwardsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${DownwardsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${SupplierConstraintsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${ToBeAwardedBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${ProductsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${MinimumSC-BF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${MaximumSC-BF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${MinimumTBA-BF}
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${QuantityToBeAwardedBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${QuantityToBeAwardedBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${QuantityToBeAwardedBF}    Quantity to be awarded (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${UpwardsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${UpwardsBF}    Upwards
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${DownwardsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DownwardsBF}    Downwards
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${SupplierConstraintsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${SupplierConstraintsBF}    Supplier constraints (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ToBeAwardedBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ToBeAwardedBF}    To be awarded (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ProductsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ProductsBF}    Product
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${MinimumSC-BF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MinimumSC-BF}    Minimum
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${MaximumSC-BF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MaximumSC-BF}    Maximum
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${MinimumTBA-BF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MinimumTBA-BF}    Minimum

Expand and Verify Gates table on Bid Form Page
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${GateOpenBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${GateCloseBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${NotificationBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${PublicationResultsBF}
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${GatesBF}
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${GatesBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${GatesBF}    Gates
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${GateOpenBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${GateOpenBF}    Gate open
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${GateCloseBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${GateCloseBF}    Gate close
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${NotificationBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${NotificationBF}    Notification
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${PublicationResultsBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${PublicationResultsBF}    Publication results

Enter Data on Bid form page
    [Arguments]    ${product_arg}    ${location_arg}    ${value5_arg}    ${value50_arg}
    Wait Until Keyword Succeeds    20s    3s    Select From List By Value    ${ProductDropdownBF}    ${product_arg}
    Wait Until Keyword Succeeds    20s    3s    Select From List By Value    ${LocationDropdownBF}    ${location_arg}
    Wait Until Keyword Succeeds    20s    3s    Input Text    //input[@id="price-field-5"]    ${value5_arg}
    Wait Until Keyword Succeeds    20s    3s    Input Text    //*[@id="price-field-50"]    ${value50_arg}

Verify Submit Confirmation Model Box
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${TitleSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${TitleSCMB}    Submit bids
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${MessageSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MessageSCMB}    Are you sure you want to submit the following bids?
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${AuctionID-SCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${AuctionID-SCMB}    Auction ID
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${DateSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${DateSCMB}    Date
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${SupplierNameSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${SupplierNameSCMB}    Supplier name
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ContactSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ContactSCMB}    Contact
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${YourReferenceSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${YourReferenceSCMB}    Your reference
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${ProductSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${ProductSCMB}    Product
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${LocationSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${LocationSCMB}    Location
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${VolumeSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${VolumeSCMB}    Volume (MW)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${PriceSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${PriceSCMB}    Price (EUR/MW/Hour)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${TotalPriceSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${TotalPriceSCMB}    Total price (EUR)
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${NoButtonSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Should Contain    ${NoButtonSCMB}    No
    Wait Until Keyword Succeeds    20s    3s    Element Should Contain    ${NoButtonSCMB}    Don't submit bids
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${YesButtonSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Should Contain    ${YesButtonSCMB}    Yes
    Wait Until Keyword Succeeds    20s    3s    Element Should Contain    ${YesButtonSCMB}    Place bids

Verify Successfully Submited Bid form Modal Box
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${YesButtonSCMB}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${TitleSS}    Successfully submitted
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${MessageSS}    Thank you, your bids have been submitted successfully
    Wait Until Keyword Succeeds    20s    3s    Element Should Contain    ${TimestampSS}    Timestamp
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${BackTOOpenAuctionButtonSS}    Back to Open Auctions
    Wait Until Keyword Succeeds    20s    3s    Element Should Contain    ${OKButtonSS}    OK
    Wait Until Keyword Succeeds    20s    3s    Element Should Contain    ${OKButtonSS}    Enter new bid

Click on Submit button
    Wait Until Keyword Succeeds    20s    3s    Click Button    ${SubmitButtonBF}

Click on Cancel button on Bid Form page
    Wait Until Keyword Succeeds    20s    3s    Click Element    ${CancelButtonBF}

Verify Bid form page Buttons
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${PasteButtonBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${PasteButtonBF}    Paste
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${SubmitButtonHiddenBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${SubmitButtonHiddenBF}    Submit
    Wait Until Keyword Succeeds    20s    3s    Element Should Be Visible    ${CancelButtonBF}
    Wait Until Keyword Succeeds    20s    3s    Element Text Should Be    ${CancelButtonBF}    Cancel

Verify that Cancel Pop-up is not displayed
    Wait Until Keyword Succeeds    20s    3s    Element Should Not Be Visible    ${TitleCPU}

Verify Total price calculation
    ${tem5}=    Get Text    xpath=(//span[@class='empty-price ng-star-inserted'])[1]
    ${tem50}=    Get Text    xpath=(//span[@class='empty-price ng-star-inserted'])[10]
    Should Be Equal    ${tem5}    36,000.00
    Should Be Equal    ${tem50}    720,000.00
