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
        print "Enter a number (1-5) to select a stock or type 'exit' to exit the program: "
    end

    def goodbye
        puts ""
        puts "Thanks for stopping by."
        puts ""
        Kernel.exit!
    end 

    def list_stock
        first_input = gets.strip.downcase
## Facebook
        if first_input == "1"
            API.new.get_iex_price_facebook
            puts ""
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
            end
            
## APPLE 
        if first_input == "2"
            API.new.get_iex_price_apple
            puts ""
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
            end
            
## Amazon
        if first_input == "3"
            API.new.get_iex_price_amazon
            puts ""
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
            end
## Netflix
        if first_input == "4"
            API.new.get_iex_price_netflix
            puts ""
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
            end
            
## Google
        if first_input == "5"
            API.new.get_iex_price_google
            puts ""
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
            end
        
        if first_input == "exit"
            goodbye
        end 
        
        if first_input != "1" || first_input != "2" || first_input != "3" || first_input != "4" || first_input != "5" || first_input != "exit"
            puts ""
            puts "Invalid Entry. Try again."
            puts ""
            menu
            list_stock
        end 
    end
 
end

