require 'mechanize'

agent = Mechanize.new
page = agent.get("https://isharemaps.bathnes.gov.uk/atmycouncil.aspx?action=SetAddress&UniqueId=XXXXXX")

fortnightly_refuse = page.search(".//span[@class='WasteHighlight']")[0].text
weekly_recycling = page.search(".//span[@class='WasteHighlight']")[1].text
fortnightly_garden =  page.search(".//span[@class='WasteHighlight']")[2].text

puts "Fortnightly Refuse: #{fortnightly_refuse}"
puts "Weekly Rcycling: #{weekly_recycling}"
puts "Fortnightly Garden: #{fortnightly_garden}"
