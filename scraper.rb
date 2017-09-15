require 'nokogiri'
require 'open-uri'

# open-URI open method
html = open("https://flatironschool.com")

# Nokogiri::HTML method, takes the string of HTML returned by
# open-URI's open method and converts it into a NodeSet (a bunch of nested nodes)
doc = Nokogiri::HTML(html)

# Nokogiri's .css method takes in an argument of the css selector you want
# to retrieve (in this case a class .heading)
doc.css(".heading")

# get the text from HTML
puts doc.css(".heading").text
