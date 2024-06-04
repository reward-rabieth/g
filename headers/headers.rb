#!/usr/bin/env ruby
require 'sinatra'

get '/show/all' do
	%w(PATH_INFO
    QUERY_STRING
    REMOTE_ADDR
    REQUEST_METHOD
    REQUEST_URI
    SERVER_NAME
    SERVER_PORT
    HTTP_HOST
		HTTP_USER_AGENT).map {|n| "%s = %s\n" % [n, request.env[n]] }
end

get '/lost' do
	status 404
end

get '/teapot' do
	status 418
end

get '/setter' do
  response.headers['Custom'] = 'My-Own-Header'
	'See Custom'
end

