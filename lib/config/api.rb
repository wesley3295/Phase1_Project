require 'json'

class Api
    def self.base_url
     "https://api.sportsdata.io/v3"
    end
    
    # def self.load_data
    # data_of_champions
    # end

    def self.data_of_champions
        response = RestClient.get(base_url + '/lol/stats/json/Champions?key=aacc8ac9a58640728208a410e55e38d0')
        data = JSON.parse(response.body)
        data.each do |data|
        Champions.new(data["Name"], data["Title"], data["Defence"], data["Armor"],data["Hp"], data["Mp"], data["MoveSpeed"], data["AttackRange"], data["AttackDamage"], data["SpellBlock"], data["Difficulty"], data["Magic"], data["Attack"])
        end
    end

    
end






 































#   def get_info
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end
  
#   def cahmpion_name
#     champions = JSON.parse("class.array.collapsible")
#     champions.collect do |info|
#       info[name]
#     end
#   end


 