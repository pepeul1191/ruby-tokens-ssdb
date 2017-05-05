# -*- coding: utf-8 -*-

require 'sinatra'
require 'ssdb'
require 'securerandom'

configure { 
	set :server, :puma 
}

def get_connection
	SSDB.new url: 'ssdb://127.0.0.1:8888'
end

before do
	headers['server'] = 'Ruby'
	content_type :html, 'charset' => 'utf-8'
	#headers 'Access-Control-Allow-Origin' => 'http://localhost:8888'
end

get '/' do
	ssdb = get_connection()
	usuario = SecureRandom.hex
	ssdb.set(usuario , SecureRandom.hex)
	puts usuario
	'ok	'
end


#rerun 'ruby index.rb -p 3000'