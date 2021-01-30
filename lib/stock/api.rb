require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class API
  ## https://iexcloud.io" >> Data provided by IEX Cloud API
  ## https://www.alphavantage.co >> Data provided by AlphaVantage API

  ## Facebook API
  URL_iex_fb_price = "https://cloud.iexapis.com/stable/stock/fb/batch?types=quote,news,chart&range=1m&last=10&token=pk_64a3b816353a4d439a1ab35e94c99d32"
  URL_facebook_more_info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=FB&apikey=HJTLZC8RYU1KF8O0"

  def get_iex_data_facebook
      uri = URI.parse(URL_iex_fb_price)
      response = Net::HTTP.get_response(uri)
      response.body
    end

    def get_iex_price_facebook
      price = JSON.parse(self.get_iex_data_facebook)
      stock = price["quote"]["companyName"]
      puts ""
      puts stock
      symbol = price["quote"]["symbol"]
      print "Symbol: "
      puts symbol
      latest_price = price["quote"]["latestPrice"]
      print "Price: "
      puts latest_price
      latest_volume = price["quote"]["latestVolume"]
      print "Volume: "
      puts latest_volume
    end

  def get_more_facebook_data
    uri = URI.parse(URL_facebook_more_info)
    response = Net::HTTP.get_response(uri)
    response.body
  end 

  def get_more_info_facebook
    more_info = JSON.parse(self.get_more_facebook_data)
    address = more_info["Address"]
    print "Address: "
    puts address
    full_time_employees = more_info["FullTimeEmployees"]
    print "Number of Full-Time Employees: "
    puts full_time_employees
    pe_ratio = more_info["PERatio"]
    print "P/E Ratio: "
    puts pe_ratio
    dividend = more_info["DividendYield"]
    print "Dividend Yield: "
    puts dividend
    eps = more_info["EPS"]
    print "EPS: "
    puts eps
  end


## Apple API
URL_Apple_More_Info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=AAPL&apikey=HJTLZC8RYU1KF8O0"
URL_iex_aapl_price = "https://cloud.iexapis.com/stable/stock/aapl/batch?types=quote,news,chart&range=1m&last=10&token=pk_64a3b816353a4d439a1ab35e94c99d32"

def get_iex_data_apple
  uri = URI.parse(URL_iex_aapl_price)
  response = Net::HTTP.get_response(uri)
  response.body
end

def get_iex_price_apple
  price = JSON.parse(self.get_iex_data_apple)
  stock = price["quote"]["companyName"]
  puts ""
  puts stock
  symbol = price["quote"]["symbol"]
  print "Symbol: "
  puts symbol
  latest_price = price["quote"]["latestPrice"]
  print "Price: "
  puts latest_price
  latest_volume = price["quote"]["latestVolume"]
  print "Volume: "
  puts latest_volume
end

def get_more_data_apple
  uri = URI.parse(URL_Apple_More_Info)
  response_two = Net::HTTP.get_response(uri)
  response_two.body
end 

def get_more_info_apple
    more_info = JSON.parse(self.get_more_data_apple)
    address = more_info["Address"]
    print "Address: "
    puts address
    full_time_employees = more_info["FullTimeEmployees"]
    print "Number of Full-Time Employees: "
    puts full_time_employees
    pe_ratio = more_info["PERatio"]
    print "P/E Ratio: "
    puts pe_ratio
    dividend = more_info["DividendYield"]
    print "Dividend Yield: "
    puts dividend
    eps = more_info["EPS"]
    print "EPS: "
    puts eps
end

  ## Amazon API
  URL_amazon_more_info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=AMZN&apikey=HJTLZC8RYU1KF8O0"
  URL_iex_amazon_price = "https://cloud.iexapis.com/stable/stock/amzn/batch?types=quote,news,chart&range=1m&last=10&token=pk_64a3b816353a4d439a1ab35e94c99d32"

  def get_iex_data_amazon
    uri = URI.parse(URL_iex_amazon_price)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def get_iex_price_amazon
    price = JSON.parse(self.get_iex_data_amazon)
    stock = price["quote"]["companyName"]
    puts ""
    puts stock
    symbol = price["quote"]["symbol"]
    print "Symbol: "
    puts symbol
    latest_price = price["quote"]["latestPrice"]
    print "Price: "
    puts latest_price
    latest_volume = price["quote"]["latestVolume"]
    print "Volume: "
    puts latest_volume
  end

  def get_more_data_amazon
    uri = URI.parse(URL_amazon_more_info)
    response_two = Net::HTTP.get_response(uri)
    response_two.body
  end 

  def get_more_info_amazon
      more_info = JSON.parse(self.get_more_data_amazon)
      address = more_info["Address"]
      print "Address: "
      puts address
      full_time_employees = more_info["FullTimeEmployees"]
      print "Number of Full-Time Employees: "
      puts full_time_employees
      pe_ratio = more_info["PERatio"]
      print "P/E Ratio: "
      puts pe_ratio
      dividend = more_info["DividendYield"]
      print "Dividend Yield: "
      puts dividend
      eps = more_info["EPS"]
      print "EPS: "
      puts eps
  end

  ## Netflix API
  URL_Netflix_More_Info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=NFLX&apikey=HJTLZC8RYU1KF8O0"
  URL_iex_netflix_price = "https://cloud.iexapis.com/stable/stock/nflx/batch?types=quote,news,chart&range=1m&last=10&token=pk_64a3b816353a4d439a1ab35e94c99d32"

  def get_iex_data_netflix
    uri = URI.parse(URL_iex_netflix_price)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def get_iex_price_netflix
    price = JSON.parse(self.get_iex_data_netflix)
    stock = price["quote"]["companyName"]
    puts ""
    puts stock
    symbol = price["quote"]["symbol"]
    print "Symbol: "
    puts symbol
    latest_price = price["quote"]["latestPrice"]
    print "Price: "
    puts latest_price
    latest_volume = price["quote"]["latestVolume"]
    print "Volume: "
    puts latest_volume
  end

  def get_more_data_netflix
    uri = URI.parse(URL_Netflix_More_Info)
    response_two = Net::HTTP.get_response(uri)
    response_two.body
  end 

  def get_more_info_netflix
      more_info = JSON.parse(self.get_more_data_netflix)
      address = more_info["Address"]
      print "Address: "
      puts address
      full_time_employees = more_info["FullTimeEmployees"]
      print "Number of Full-Time Employees: "
      puts full_time_employees
      pe_ratio = more_info["PERatio"]
      print "P/E Ratio: "
      puts pe_ratio
      dividend = more_info["DividendYield"]
      print "Dividend Yield: "
      puts dividend
      eps = more_info["EPS"]
      print "EPS: "
      puts eps
  end

    ## Google API
    URL_Google_More_Info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=GOOG&apikey=HJTLZC8RYU1KF8O0"
    URL_iex_goog_price = "https://cloud.iexapis.com/stable/stock/goog/batch?types=quote,news,chart&range=1m&last=10&token=pk_64a3b816353a4d439a1ab35e94c99d32"

    def get_iex_data_google
      uri = URI.parse(URL_iex_goog_price)
      response = Net::HTTP.get_response(uri)
      response.body
    end
    
    def get_iex_price_google
      price = JSON.parse(self.get_iex_data_google)
      stock = price["quote"]["companyName"]
      puts ""
      puts stock
      symbol = price["quote"]["symbol"]
      print "Symbol: "
      puts symbol
      latest_price = price["quote"]["latestPrice"]
      print "Price: "
      puts latest_price
      latest_volume = price["quote"]["latestVolume"]
      print "Volume: "
      puts latest_volume
    end
  
    def get_more_data_google
      uri = URI.parse(URL_Google_More_Info)
      response_two = Net::HTTP.get_response(uri)
      response_two.body
    end 
  
    def get_more_info_google
        more_info = JSON.parse(self.get_more_data_google)
        address = more_info["Address"]
        print "Address: "
        puts address
        full_time_employees = more_info["FullTimeEmployees"]
        print "Number of Full-Time Employees: "
        puts full_time_employees
        pe_ratio = more_info["PERatio"]
        print "P/E Ratio: "
        puts pe_ratio
        dividend = more_info["DividendYield"]
        print "Dividend Yield: "
        puts dividend
        eps = more_info["EPS"]
        print "EPS: "
        puts eps
    end
end



