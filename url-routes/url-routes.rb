#!/usr/bin/env ruby
require 'sinatra'

# match method + combo routes: GET /people/:id, POST /people, POST /people/:id

get '/' do
  "got /"
end

get '/people' do
  "got /people"
end

post '/people' do
  "posted to /people"
end

get '/people/:id' do |id|
  "got person %s" % id
end

post '/people/:id' do |id|
  "posted person %s" % id
end

# match route with regexp: /people/([1-9][0-9]*)/country/([A-Z]{2})$

get %r{/country/([A-Z][A-Z])} do |cc|
  "got country %s" % cc
end

get %r{/people/([1-9][0-9]*)/country/([A-Z][A-Z])} do |id, cc|
  "got person %d, country %s" % [id, cc]
end

