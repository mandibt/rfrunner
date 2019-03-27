*** Variables ***
${YearAuctionCalendar}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[1]/strong
${MonthAuctionCalendar}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[2]/strong
${AuctionIDAuctionCalendar}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[3]/strong
${TypeAuctionCalendar}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[4]/strong
${FrrQuantityToBeAwardedAuctionCalendar}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[5]/strong
${StatusAuctionCalendar}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[1]/td[6]/strong
${ContractPeriodAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[1]/table/thead/th
${StartAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[1]
${EndAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]
${ProductsAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[2]/table/thead/th
${DeliveryPeriodAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[3]/table/thead/th
${SupplierConstraintsAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[4]/table/thead/th
${Minimum-SC-AuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[4]/table/tbody/tr[1]/td[1]
${Maximum-SC-AuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[4]/table/tbody/tr[1]/td[2]
${ToBeAwardedAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[5]/table/thead/th
${Minimum-TBA-AuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[5]/table/tbody/tr[1]/td
${GatesAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/thead/th
${OpenAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/tbody/tr[1]/td[1]
${CloseAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/tbody/tr[1]/td[2]
${NotifyAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/tbody/tr[1]/td[3]
${PublishAuctionCalendar}    //*[@id="t-collapse-0"]/div/table/tbody/tr/td[6]/table/tbody/tr[1]/td[4]
${UpwardsAuctionCalendar}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]
${DownwardsAuctionCalendar}    //*[@id="auction-calendar"]/app-auctions-calendar-table/table/tbody/tr[2]/td[5]/table/tbody/tr/td[2]
${AuctionLine-AC-FRR-20180503-1400}    //*[@id="auction-table-0"]/table/tbody/tr/td[7]    # Expands the Auction Line
${AuctionCalendarMainMenuButton}    id:auctions-calendar-menu-item
${HomeButtonMainMenu}    id:home-menu-item
