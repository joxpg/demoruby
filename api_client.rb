require 'faraday'

client = Faraday.new(url:'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
end
response =client.post do |req|

    req.url '/api/v1/users'
    req.headers['Content-Type']='application/json'
    req.body ='{"user":{"name": "testuser"]}}'

end
require 'oj'
puts Oj.load(response.body)
puts response.status


end