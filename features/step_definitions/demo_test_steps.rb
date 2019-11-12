#!/usr/local/bin/ruby

=begin
/***************************************************************************
 *   This script is created to verify test cases in demo test feature file  *
 *   Date               Author            Description                       *
 *   11/11/2019         Sharique           Initial                          *
 ****************************************************************************
=end

url                         = $data_hash['tms']['url']
api                         = $data_hash['tms']['api']
param                       = $data_hash['tms']['param']
response_catalogue_details  = ""
catalog_name                = ""
response_hash               = {}

When(/^the users want to get details on the (.*) with (\d+)$/) do |arg1,arg2|
  catalog_name = arg1
  endpoint = "#{url}" + "#{api}" + arg2 + "#{param}"
  puts "\nEndpoint for #{catalog_name} is::   #{endpoint}"
  response_catalogue_details = RestClient.get endpoint
  response_hash = JSON.parse(response_catalogue_details)
end

Then(/^response code is (\d+)$/) do |arg1|
  assert_equal(arg1, response_catalogue_details.code.to_s, "status is NOT 200 OK")
end

Then(/^response has Category Name as (.*)$/) do |arg1|
  assert_equal(arg1, response_hash['Name'], "Name #{arg1} was not found in the response")
end

Then(/^response has canRelist as (.*)$/) do |arg1|
  canRelist  = response_hash['CanRelist'].to_s
  assert_equal(arg1, canRelist,"CanRelist was not found True for #{catalog_name}")
end

Then(/^promotion with option (.*) contains description as (.*)$/) do |arg1,arg2|
  promotions = response_hash['Promotions']
  gallery_hash = {}
  promotions.each{|p| gallery_hash = p if p['Name'] == arg1 }
  assert_match(arg2, gallery_hash['Description'], 'The Promotions element with Name = "#{arg1}" has a Description that contains the text "#{arg2}"')
end