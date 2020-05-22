require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'


class Scraper


  def get_page
    doc = Nokogiri::HTML(open('http://learn-co-curriculum.github.io/site-for-scraping/courses'))
    courses = doc.css(".post")
    courses.each do |course|
      course = Course.new
      course.title = doc.css(".post").css("h2").text
      course.schedule = doc.css(".post")[0].css(".date").text
      course.description = doc.css(".post").css("p").text
    end
  end


  


  def get_courses



  end




end
