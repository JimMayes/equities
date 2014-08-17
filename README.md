# Equities

Equities is a simple Ruby library that retrieves a stock quote from Yahoo Finance (YQL).

Retrieve quotes for a single stock or multiple stocks (passed as an array) in one request. Results are returned converted to OpenStructs for easy access to specific values.

[![Build Status](https://travis-ci.org/JimMayes/equities.png?branch=master)](https://travis-ci.org/JimMayes/equities) 
[![Code Climate](https://codeclimate.com/github/JimMayes/equities.png)](https://codeclimate.com/github/JimMayes/equities)
[![Gem Version](https://badge.fury.io/rb/equities.png)](http://badge.fury.io/rb/equities)

## Installation

Add this line to your application's Gemfile:

    gem 'equities'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install equities

## Usage

### Retrieve quote for a single stock

    quote = Equities.quote 'aapl'
    p quote.Name
    # => "Apple Inc."

### Retrieve quotes for multiple stocks

Provide an array of stock symbols to retrieve quotes for multiple stocks in a single request

    quotes = Equities.quote ['aapl', 'goog']

Directly access an individual stock within the result set by it's symbol

    p quotes['AAPL'].Name
    # => "Apple Inc."

Or loop through the result set

    quotes.each do |quote|
        p quote.last.Name
    end
    # => "Apple Inc."
    # => "Google Inc."

### Available Stock data

    symbol
    Ask
    AverageDailyVolume
    Bid
    AskRealtime
    BidRealtime
    BookValue
    Change_PercentChange
    Change
    Commission
    Currency
    ChangeRealtime
    AfterHoursChangeRealtime
    DividendShare
    LastTradeDate
    TradeDate
    EarningsShare
    ErrorIndicationreturnedforsymbolchangedinvalid
    EPSEstimateCurrentYear
    EPSEstimateNextYear
    EPSEstimateNextQuarter
    DaysLow
    DaysHigh
    YearLow
    YearHigh
    HoldingsGainPercent
    AnnualizedGain
    HoldingsGain
    HoldingsGainPercentRealtime
    HoldingsGainRealtime
    MoreInfo
    OrderBookRealtime
    MarketCapitalization
    MarketCapRealtime
    EBITDA
    ChangeFromYearLow
    PercentChangeFromYearLow
    LastTradeRealtimeWithTime
    ChangePercentRealtime
    ChangeFromYearHigh
    PercebtChangeFromYearHigh
    LastTradeWithTime
    LastTradePriceOnly
    HighLimit
    LowLimit
    DaysRange
    DaysRangeRealtime
    FiftydayMovingAverage
    TwoHundreddayMovingAverage
    ChangeFromTwoHundreddayMovingAverage
    PercentChangeFromTwoHundreddayMovingAverage
    ChangeFromFiftydayMovingAverage
    PercentChangeFromFiftydayMovingAverage
    Name
    Notes
    Open
    PreviousClose
    PricePaid
    ChangeinPercent
    PriceSales
    PriceBook
    ExDividendDate
    PERatio
    DividendPayDate
    PERatioRealtime
    PEGRatio
    PriceEPSEstimateCurrentYear
    PriceEPSEstimateNextYear
    Symbol
    SharesOwned
    ShortRatio
    LastTradeTime
    TickerTrend
    OneyrTargetPrice
    Volume
    HoldingsValue
    HoldingsValueRealtime
    YearRange
    DaysValueChange
    DaysValueChangeRealtime
    StockExchange
    DividendYield
    PercentChange

## Contributing

1. Fork it ( https://github.com/JimMayes/equities/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
