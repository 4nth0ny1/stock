class StockCli::CLI 

    def call 
        welcome 
        menu
        list_stock
    end

    def welcome 
        puts ""
        puts "FAANG Stock Watcher"
    end 

    def menu 
        puts ""
        puts "Choose a stock to get the price:"
        puts "1. Facebook"
        puts "2. Apple"
        puts "3. Amazon"
        puts "4. Netflix"
        puts "5. Google"
        puts ""
        print "Enter a number (1-5) to select a stock: "
    end

    def list_stock
        first_input = gets.strip.downcase
## Facebook
        if first_input == "1"
            print "Facebook, Inc. - "
            API.new.get_price_facebook
            puts  "------------------"
                # more information about facebook
                puts "Press y for more information:"
                input = gets.strip.downcase
                puts ""
                if input == "y"
                    API.new.get_more_info_facebook
                    puts ""
                    menu
                    list_stock
                else 
                    puts "Invalid Entry. Try again."
                    menu
                    list_stock
                end

## APPLE 
        elsif first_input == "2"
            print "Apple, Inc. - "
            API.new.get_price_apple
            puts  "------------------"
               # more information about apple
               puts "Press y for more information:"
               input = gets.strip.downcase
               puts ""
               if input == "y"
                   API.new.get_more_info_apple
                   puts ""
                   menu
                   list_stock
               else 
                   puts "Invalid Entry. Try again."
                   menu
                   list_stock
               end
## Amazon
        elsif first_input == "3"
            print "Amazon, Inc. - " 
            API.new.get_price_amazon
            puts  "------------------"
                # more information about amazon
                puts "Press y for more information:"
                input = gets.strip.downcase
                puts ""
                if input == "y"
                    API.new.get_more_info_amazon
                    puts ""
                    menu
                    list_stock
                else 
                    puts "Invalid Entry. Try again."
                    menu
                    list_stock
                end
## Netflix
        elsif first_input == "4"
            print "Netflix, Inc. - "
            API.new.get_price_netflix
            puts  "------------------"
                # more information about netflix
                puts "Press y for more information:"
                input = gets.strip.downcase
                puts ""
                if input == "y"
                    API.new.get_more_info_netflix
                    puts ""
                    menu
                    list_stock
                else 
                    puts "Invalid Entry. Try again."
                    menu
                    list_stock
                end

        elsif first_input == "5"
            print "Google, Inc. - "
            API.new.get_price_google
            puts  "------------------"
                # more information about google
                puts "Press y for more information:"
                input = gets.strip.downcase
                puts ""
                if input == "y"
                    API.new.get_more_info_google
                    puts ""
                    menu
                    list_stock
                else 
                    puts "Invalid Entry. Try again."
                    menu
                    list_stock
                end
        else first_input != "1" || "2" || "3" || "4" || "5"
            puts "Invalid Entry. Try again."
            puts ""
            menu
            list_stock
        end 
    end 
 
end

