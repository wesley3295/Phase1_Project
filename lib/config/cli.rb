class Cli

    def start
        puts "Welcome to Legend"
        puts "Legend is an app that gives base statistics on Champions in the MOBA game League of Legends!"
        Api.load_data
    main_menu_options
    end

    def main_menu_options
        puts "Input '1' for a list of Champions"
        puts "Type 'exit' to exit Legend"
    end
end