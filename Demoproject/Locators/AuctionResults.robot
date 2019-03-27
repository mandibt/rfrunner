*** Variables ***
${YearAR}         //*[@id="auction_results"]/app-auction-results-table/table/tbody/tr/td[1]
${MonthAR}        //*[@id="auction_results"]/app-auction-results-table/table/tbody/tr/td[2]
${AuctionID-AR}    //*[@id="auction_results"]/app-auction-results-table/table/tbody/tr/td[3]
${TypeAR}         //*[@id="auction_results"]/app-auction-results-table/table/tbody/tr/td[4]
${StartContractAR}    //*[@id="auction_results"]/app-auction-results-table/table/tbody/tr/td[5]
${EndContractAR}    //*[@id="auction_results"]/app-auction-results-table/table/tbody/tr/td[6]
${AllocationStatusAR}    //*[@id="auction_results"]/app-auction-results-table/table/tbody/tr/td[7]
${ResultsAR}      //*[@id="auction_results"]/app-auction-results-table/table/tbody/tr/td[8]
${ProductAR}      //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[1]/table/thead/th
${LocationAR}     //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[2]/table/thead/th
${DeliveryPeriodAR}    //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[3]/table/thead/th
${YourReferenceAR}    //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[4]/table/thead/th
${VersionAR}      //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[5]/table/thead/th
${ContactAR}      //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[6]/table/thead/th
${VolumeAR}       //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[7]/table/thead/th
${PriceAR}        //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[8]/table/thead/th
${HoursAR}        //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[9]/table/thead/th
${PriceEurMwHourAR}    //*[@id="t-collapse-13"]/div/table/tbody/tr[1]/td[10]/table/thead/th
${ExpandAuctionLineAR}    //*[@id="auction-table-13"]/table/tbody/tr/td[1]    # Expands auction line with \ Auction ID FRR-20190513-14:00
${AuctionResultsMainMenuButton}    id:auction-results-menu-item
