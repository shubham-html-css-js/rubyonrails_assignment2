require 'nokogiri'
require 'httparty'
require 'byebug'
def scrapper(url)
    page_unparsed=HTTParty.get(url)
    page_parsed=Nokogiri::HTML(page_unparsed)
    x=page_parsed.css('div.individual_internship').count
    # puts page_parsed.css('div.individual_internship a.link_display_like_text')[0].text
    puts "List of Companies Providing Internship at Bangalore"
    puts page_parsed.css('div.individual_internship a.link_display_like_text').text
        # page_parsed.css('div.individual_internship a.link_display_like_text').pop()
end
scrapper("https://internshala.com/internships/internship-in-bangalore")