require "equities/version"
require "restclient"
require "json"

module Equities
    def self.quote(ticker)
        if ticker.kind_of?(Array)
            ticker = ticker.join(",")
        end

        resource = RestClient::Resource.new 'http://query.yahooapis.com/v1/public/yql'

        options = {
            :params => {
                q: "select * from yahoo.finance.quotes where symbol in ('#{ticker}')",
                format: 'json',
                env: 'store://datatables.org/alltableswithkeys'
            }
        }

        response = JSON.parse(resource.get options)

        if response["query"]["count"] > 1
            quotes = {}
            response["query"]["results"]["quote"].each do |quote|
                quotes[quote["symbol"]] = OpenStruct.new(quote)
            end
            return quotes
        else
            OpenStruct.new response["query"]["results"]["quote"]
        end
    end
end
