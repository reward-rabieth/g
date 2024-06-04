#!/usr/bin/env ruby
require 'sinatra'

get '/' do
  "get / a='%s'" % params[:a]
end

post '/' do
  "post / a='%s'" % params[:a]
end

get '/one' do
  "get /one a='%s'" % params[:a]
end

post '/one' do
  "post /one a='%s'" % params[:a]
end

get '/two' do
  "get /two a='%s' b='%s'" % [params[:a], params[:b]]
end

post '/two' do
  "post /two a='%s' b='%s'" % [params[:a], params[:b]]
end

get %r{/p/([1-9][0-9]*)/c/([A-Z][A-Z])} do |id, cc|
  "get /p/%d/c/%s a='%s'" % [id, cc, params[:a]]
end

post %r{/p/([1-9][0-9]*)/c/([A-Z][A-Z])} do |id, cc|
  "post /p/%d/c/%s a='%s'" % [id, cc, params[:a]]
end

