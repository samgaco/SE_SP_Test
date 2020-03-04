# frozen_string_literal: true

# !/usr/bin/env ruby

require 'httparty'

# Class for storing parsed JSON data from users, containing different queries.
class UserData
  def initialize
    response = HTTParty.get('http://jsonplaceholder.typicode.com/users')
    @response_data = JSON.parse(response.body)
  end

  def cities
    @response_data.each do |user|
      puts user['address']['city']
    end
  end
end

data = UserData.new
data.cities
