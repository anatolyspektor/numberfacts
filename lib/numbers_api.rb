require 'rest-client'

module NumbersApi

  def self.get_fact(number)
    response = RestClient.get("http://numbersapi.com/#{number}", headers={})
    if response.code == 200
      return response.body
    else
      return "Sorry pal, API is not responding!"
    end

  end

end