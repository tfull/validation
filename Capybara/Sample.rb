require 'capybara/poltergeist'

URL = "target/url"

def main
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app)
  end

  Capybara.javascript_driver = :poltergeista

  session = Capybara::Session.new(:poltergeist)

  session.visit(URL)

  session.click_on("next")

  session.fill_in(:field, with: "Hello, world!")
  
  session.save_screenshot("ss.png")
end

if $0 == __FILE__
  main
end
