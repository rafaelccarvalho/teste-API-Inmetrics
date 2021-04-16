class CadastroPage < SitePrism::Page
  set_url "/accounts/signup"

  def go
    visit "/accounts/signup/"
  end
end