#!/usr/bin/env ruby
require 'sinatra'

get '/give' do
  response.set_cookie('ok', value: 'yeah', path: '/',
    expires: Time.now + (60 * 60 * 24 * 3),
    secure: true,
    httponly: true,
    same_site: :strict)
  ''
end

get '/delete' do
  response.set_cookie('ok', value: '', path: '/',
    expires: Time.now - (60 * 60 * 24),
    secure: true,
    httponly: true,
    same_site: :strict)
  ''
end

get '/show' do
  request.cookies['ok']
end

