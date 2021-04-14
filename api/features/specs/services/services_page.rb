class APItest
  include HTTParty
 
    def requisicao(verbo)
      case 
      when verbo == "get user"
        HTTParty.get($url_get_user, :basic_auth => $auth)
      when verbo == "get all"
        HTTParty.get($url_get_all, :basic_auth => $auth)
      when verbo == "post"
        HTTParty.post($url_post_user, :basic_auth => $auth, body: $payload_page.create_valid_user, :headers => $headers)
      when verbo == "post invalid"
        HTTParty.post($url_post_user, :basic_auth => $auth, body: $payload_page.create_invalid_user, :headers => $headers)      
      else verbo == "put"
        HTTParty.put($url_put, :basic_auth => $auth, body: $payload_page.edit_user, :headers => $headers)
      end
    end
end