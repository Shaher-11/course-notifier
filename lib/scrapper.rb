require 'nokogiri'
require 'httparty'
require 'byebug'
require 'open-uri'

class Scrapper

  @@base_url = 'https://www.coursera.org/search?query='

  def initialize

  end

  def scrape(stack)
    search_url = @@base_url+stack

    unparsed_page = HTTParty.get(search_url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    tab_contents = parsed_page.css('.tab-contents')
    byebug
  end
end