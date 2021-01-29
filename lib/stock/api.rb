require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class API

  ## Facebook API
  URL_facebook = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=FB&interval=5min&outputsize=full&apikey=HJTLZC8RYU1KF8O0"
  URL_facebook_more_info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=FB&apikey=HJTLZC8RYU1KF8O0"

  def get_data_facebook
    uri = URI.parse(URL_facebook)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def get_price_facebook
    price = JSON.parse(self.get_data_facebook)
    stock = price["Time Series (5min)"].first
    stock[1].each do |type, numbers|
      if type.include? "close"
        puts numbers
      end 
    end 
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
URL_Apple = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=AAPL&interval=5min&outputsize=full&apikey=HJTLZC8RYU1KF8O0"
URL_Apple_More_Info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=AAPL&apikey=HJTLZC8RYU1KF8O0"

def get_data_apple
  uri = URI.parse(URL_Apple)
  response = Net::HTTP.get_response(uri)
  response.body
end

def get_price_apple
  price = JSON.parse(self.get_data_apple)
  stock = price["Time Series (5min)"].first
  stock[1].each do |type, numbers|
    if type.include? "close"
      puts numbers
    end 
  end 
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
  URL_amazon = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=AMZN&interval=5min&outputsize=full&apikey=HJTLZC8RYU1KF8O0"
  URL_amazon_more_info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=AMZN&apikey=HJTLZC8RYU1KF8O0"

  def get_data_amazon
    uri = URI.parse(URL_amazon)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def get_price_amazon
      price = JSON.parse(self.get_data_amazon)
      stock = price["Time Series (5min)"].first
      stock[1].each do |type, numbers|
      if type.include? "close"
        puts numbers
      end 
    end 
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
  URL_Netflix = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=NFLX&interval=5min&outputsize=full&apikey=HJTLZC8RYU1KF8O0"
  URL_Netflix_More_Info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=NFLX&apikey=HJTLZC8RYU1KF8O0"

  def get_data_netflix
    uri = URI.parse(URL_Netflix)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def get_price_netflix
      price = JSON.parse(self.get_data_netflix)
      stock = price["Time Series (5min)"].first
      stock[1].each do |type, numbers|
      if type.include? "close"
        puts numbers
      end 
    end 
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
    URL_Google = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=GOOG&interval=5min&outputsize=full&apikey=HJTLZC8RYU1KF8O0"
    URL_Google_More_Info = "https://www.alphavantage.co/query?function=OVERVIEW&symbol=GOOG&apikey=HJTLZC8RYU1KF8O0"
  
    def get_data_google
      uri = URI.parse(URL_Google)
      response = Net::HTTP.get_response(uri)
      response.body
    end
  
    def get_price_google
        price = JSON.parse(self.get_data_google)
        stock = price["Time Series (5min)"].first
        stock[1].each do |type, numbers|
        if type.include? "close"
          puts numbers
        end 
      end 
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

# api = API.new
# api.get_price_facebook

# api = API.new
# api.get_more_info_amazon