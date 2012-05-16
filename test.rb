require 'sinatra'
require 'mongo'


@con = Mongo::Connection.new
@db = @con['inventory']