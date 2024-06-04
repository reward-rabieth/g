#!/usr/bin/env ruby
require 'sinatra'

get '/' do
  redirect('/here')
end

get '/here' do
  'arrived'
end

