require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://taobao-api2.p.rapidapi.com/taobao/v1/item/603395007187/detail")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = '<YOUR API KEY>'
request["x-rapidapi-host"] = 'taobao-api2.p.rapidapi.com'

response = http.request(request)
puts response.read_body
