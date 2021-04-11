require "httparty"
require "faker"
require "ffaker"
require "cpf_faker"

Before do
  @auth = { :username => "inmetrics", :password => "automacao" }
  @uri_base = URL["base_uri"]
  @get = URL["get_user"]
  @get_all = URL["get_all"]
  @put = URL["put"]
  @post = URL["post"]
  @payload_page = PayloadCreate.new
  @headers = { "Content-Type" => "application/json" }
end