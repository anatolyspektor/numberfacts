require 'rest-client'

module NumbersApi

  # these uses RestClient to get a fact from api
  def self.get_fact(number)
    begin
      response = RestClient.get("http://numbersttapi.com/#{number}", headers={})
      if response.code == 200
        return response.body
      end
        #this should probably more specific in future!
    rescue Exception => err
      return "Sorry pal, API is not responding today!"
    end
  end

end