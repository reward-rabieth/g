#!/usr/bin/env ruby
require 'sinatra'
require 'erb'

get '/hello/:name' do |name|
  ERB.new('<h1>Hello <%= name %></h1>').result(binding)
end

