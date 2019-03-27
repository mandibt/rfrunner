*** Variables ***
${BiddformTitle}    class:bidform_page_title
${YourDetailsBF}    xpath=(//*[@class="table-sub-header"])[1]
${SupplierNameBF}    xpath=(//*[@class="bold border1px"])[1]
${ContactBF}      xpath=(//*[@class="bold border1px"])[2]
${YourReferenceBF}    xpath=(//*[@class="bold border1px"])[3]
${ProductBF}      xpath=(//*[@class="bold border1px"])[4]
${LocationBF}     xpath=(//*[@class="bold border1px"])[5]
${BidBF}          xpath=(//*[@class="table-sub-header"])[2]
${PleaseEnterYourBidsBF}    xpath=(//*[@class="left"])
${VolumeBF}       //table[@class='table_background bidform-table prices_left']//tr[@class='table-sub-header']/td[1]
${PriceBF}        //table[@class='table_background bidform-table prices_left']//tr[@class='table-sub-header']/td[2]
${TotalPriceBF}    //table[@class='table_background bidform-table prices_left']//tr[@class='table-sub-header']/td[3]
${ClickOnAuctionDetailsHeader}    //div[@aria-controls="auction-details-table"]
${AuctionDetailsBF}    //div[@aria-controls="auction-details-table"]
${AuctionID-BF}    //*[@id="auction-details-table"]/div/table/tbody/tr[1]/td[1]
${ContractStartBF}    //*[@id="auction-details-table"]/div/table/tbody/tr[2]/td[1]
${ContractEndBF}    //*[@id="auction-details-table"]/div/table/tbody/tr[3]/td[1]
${ContractHoursBF}    //*[@id="auction-details-table"]/div/table/tbody/tr[4]/td[1]
${DeliveryPeriodBF}    //*[@id="auction-details-table"]/div/table/tbody/tr[5]/td[1]
${UpwardsBF}      //*[@id="quantity-table"]/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]
${DownwardsBF}    //*[@id="quantity-table"]/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[2]
${SupplierConstraintsBF}    //*[@id="quantity-table"]/div/table/tbody/tr[3]/td[2]/strong
${ToBeAwardedBF}    //*[@id="quantity-table"]/div/table/tbody/tr[3]/td[3]
${QuantityToBeAwardedBF}    //div[@aria-controls='quantity-table']
${ProductsBF}     //*[@id="quantity-table"]/div/table/tbody/tr[4]/td[1]
${MinimumSC-BF}    //*[@id="quantity-table"]/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]
${MaximumSC-BF}    //*[@id="quantity-table"]/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[2]
${MinimumTBA-BF}    //*[@id="quantity-table"]/div/table/tbody/tr[4]/td[3]
${GatesBF}        //div[@aria-controls='gates-table']
${GateOpenBF}     //*[@id="gates-table"]/div/table/tbody/tr[1]/td[1]
${GateCloseBF}    //*[@id="gates-table"]/div/table/tbody/tr[2]/td[1]
${NotificationBF}    //*[@id="gates-table"]/div/table/tbody/tr[3]/td[1]
${PublicationResultsBF}    //*[@id="gates-table"]/div/table/tbody/tr[4]/td[1]
${YourReferenceInputBF}    //input[@name="your_reference"]
${ProductDropdownBF}    //select[@name="products_dropdown"]
${LocationDropdownBF}    //select[@name="location_dropdown"]
${SubmitButtonBF}    id:paste-btn-val
${TitleSCMB}      //*[@id="submitModal"]/div/div/div[1]/h4
${MessageSCMB}    //*[@id="submitModal"]/div/div/div[2]/p
${AuctionID-SCMB}    //*[@id="submitModal"]/div/div/div[3]/div[1]/table/tbody/tr[1]/td[1]
${DateSCMB}       //*[@id="submitModal"]/div/div/div[3]/div[1]/table/tbody/tr[2]/td[1]
${SupplierNameSCMB}    //*[@id="submitModal"]/div/div/div[3]/div[1]/table/tbody/tr[3]/td[1]
${ContactSCMB}    //*[@id="submitModal"]/div/div/div[3]/div[1]/table/tbody/tr[4]/td[1]
${YourReferenceSCMB}    //*[@id="submitModal"]/div/div/div[3]/div[1]/table/tbody/tr[5]/td[1]
${ProductSCMB}    //*[@id="submitModal"]/div/div/div[3]/div[1]/table/tbody/tr[6]/td[1]
${LocationSCMB}    //*[@id="submitModal"]/div/div/div[3]/div[1]/table/tbody/tr[7]/td[1]
${VolumeSCMB}     //*[@id="submitBidsModalTable"]//th[1]
${PriceSCMB}      //*[@id="submitBidsModalTable"]//th[2]
${TotalPriceSCMB}    //*[@id="submitBidsModalTable"]//th[3]
${NoButtonSCMB}    id:cancel-bids-btn
${YesButtonSCMB}    id:place-bids-btn
${TitleSS}        //*[@id="placeBidsModal"]/div/div/div[1]/h4
${MessageSS}      //*[@id="placeBidsModal"]/div/div/div[2]/p[1]
${TimestampSS}    css:body.body-ov-hidden:nth-child(2) div.container-fluid.no-gutters app-header.ng-star-inserted:nth-child(2) app-bidform.ng-star-inserted:nth-child(3) div.content-holder.bidform-content-holder div.row.bitform-row div.col-md-6:nth-child(1) div.modal.fade.smallPopUp.show:nth-child(2) div.modal-dialog div.modal-content div.modal-subtitle > p:nth-child(2)
${BackTOOpenAuctionButtonSS}    id:back-open-auctions-btn
${OKButtonSS}     id:enter-new-bid-btn
${CancelButtonBF}    id:cancel-btn
${TitleCPU}       //div[@id='canDeactivateModal']//div[@class='modal-dialog']//h4
${MessageCPU}     //div[@id='canDeactivateModal']//div[@class='modal-subtitle']
${YesButtonCPU}    //*[@id="yesCancelBids"]
${NoButtonCPU}    //*[@id="no-cancel-bids"]
${PasteButtonBF}    //button[@id='paste-btn']
${SubmitButtonHiddenBF}    id:submit-btn
${BackToTopButtonBF}    id:back-top-btn
${ProductInputBF}    aFRR Downwards
${LocationInputBF}    BG21/22 (RV)
${Volume5_PriceInputBF}    10
${Volume50_PriceInputBF}    20
