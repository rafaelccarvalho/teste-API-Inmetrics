require "httparty"
require "faker"
require "ffaker"
require "cpf_faker"

Before do
  $auth = { :username => "inmetrics", :password => "automacao" }
  @uri_base = URL['base_uri']
  $url_post_user = @uri_base + URL["post"]
  $url_get_user = @uri_base + URL["get_user"]
  $url_get_all = @uri_base + URL["get_all"]
  $url_put = @uri_base + URL["put"]
  @api_test = APItest.new
  $payload_page = PayloadCreate.new
  $headers = { "Content-Type" => "application/json" }  
end