
#puts "ingrese su nombre"
puts "ingrese cuerpo publica"
Post = gets.chomp

require 'faraday'

client = Faraday.new(url:'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    config.token_auth('27ad8a21fb3a2e930d81465e21b9cef1')
end


response =client.post do |req|

    req.url '/api/v1/posts'
    req.headers['Content-Type']='application/json'
    req.body ='{"post":{"body": "'+Post+'"}}'

end
=begin 
response =client.post do |req|

    req.url '/api/v1/users'
    req.headers['Content-Type']='application/json'
    req.body ='{"user":{"name": "'+name+'"}}'

end
=end
require 'oj'
puts Oj.load(response.body)
puts response.status

#
#"27ad8a21fb3a2e930d81465e21b9cef1"}
#