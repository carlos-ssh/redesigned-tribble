class ResponseApi < ApplicationRecord
  def self.save_data_from_api
    require 'net/http'
    require 'json'
    require 'uri'

    @url = "https://api.currencyapi.com/v3/latest?apikey=4ijRkSxGPdVuYxlIsQ3zwDnIUojKUAazysyJkeEI"
    @uri = URI(@url)
    @response = Net::HTTP.get_response(@uri)
    @output = JSON.parse(@response.body)
    @output.each do |key, value|
      @data = Data.new
      @data.name = key
      @data.code = value["code"]
      @data.value = value["rates"]["USD"]
      @data.create!
    end
  end
end

# def self.save_data_from_api
# uri = URI.parse("https://techcompany.zendesk.com/api/v2/users.json")
# request = Net::HTTP::Get.new(uri)
# request.basic_auth("adminname@blah.com", "properpassword")

# req_options = {
# use_ssl: uri.scheme == "https",
# }

# response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
# http.request(request)
# end
# info = response.body
# user_data = JSON.parse(info)

# users = user_data.map.first do |line|
#     u = User.new
#     u.zendesk_id = line['users']['id']
#     u.save
#     u
# end

# end
