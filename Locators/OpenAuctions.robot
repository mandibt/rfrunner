*** Variables ***
${YearOA}         //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[1]/strong
${MonthOA}        //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[2]/strong
${AuctionID-OA}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[3]/strong
${TypeOA}         //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[4]/strong
${FrrQuantityToBeAwarded-OA}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[5]/strong
${Upwards-OA}     //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]
${DownwardsOA}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[2]/td[5]/table/tbody/tr/td[2]
${StatusOA}       //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[6]/strong
${ContractPeriodOA}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[1]/table/thead/th
${StartOA}        //*[@id="t-collapse-0"]/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[1]
${EndOA}          //*[@id="t-collapse-0"]/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]
${ProductsOA}     //*[@id="t-collapse-0"]/div/table/tbody/tr/td[2]/table/thead/th
${DeliveryPeriodOA}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[3]/table/thead/th
${SupplierConstraintsOA}    //div[@id='t-collapse-0']//th[@colspan='2'][contains(text(),'Supplier constraints (MW)')]
${MinimumSC-OA}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[4]/table/tbody/tr[1]/td[1]
${MaximumSC-OA}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[4]/table/tbody/tr[1]/td[2]
${ToBeAwardedOA}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[5]/table/thead/th
${MinimumTBA-OA}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[5]/table/tbody/tr[1]/td
${GatesOA}        //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/thead/th
${OpenOA}         //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/tbody/tr[1]/td[1]
${CloseOA}        //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/tbody/tr[1]/td[2]
${NotifyOA}       //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/tbody/tr[1]/td[3]
${PublishOA}      //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/tbody/tr[1]/td[4]
${BidformButton1}    xpath=(//*[@id="bidform-btn"])[1]    # Click on Bidform button with AUction ID FRR-20190501-14:00
${BidformButton2}    //table[@class='table-collapse-btn']//button[@id='bidform-btn']    # Click on Bidform button with Auction ID FRR-20190509-14:00
${AuctionLine-OA-FRR-20190501-1400}    //*[@id="auction-table-0"]/table/tbody/tr/td[1]    # Expands the Auction Line
${OpenAuctionsMainMenuButton}    id:open-auctions-menu-item
