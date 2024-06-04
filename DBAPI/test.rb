#!/usr/bin/env ruby
require_relative 'db.rb'

API = DBAPI.new('zz')

puts "PERSON:"
ok, person = API.a('person', 1)
puts person
ok, person = API.a('person', 2)
puts person
ok, person = API.a('person', 999)
puts person

puts "PEOPLE:"
ok, people = API.a('people')
puts people

puts "GIVE CHARLIE CHOCOLATE: (only once)"
ok, n = API.a('thing_add', 2, 'chocolate', 3.75)
puts n
if ok
	ok, n = API.a('thing_add', 2, 'chocolate', 3.75)
	puts n
end

puts "GIVE CHARLIE LOVE: (overloaded, priceless)"
ok, n = API.a('thing_add', 2, 'love')
puts n

