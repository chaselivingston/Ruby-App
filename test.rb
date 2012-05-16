require 'sinatra'
require 'mongo'


@con = Mongo::Connection.new
@db = @con['inventory']
@coll = @db['items']

@coll.remove
3.times.do |i|
	@coll.insert({'a' => i+1})
end


puts @coll.find.each {|doc| puts doc.inspect}