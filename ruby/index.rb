require 'sinatra'
require 'json'

set :bind, '0.0.0.0'
configure { set :server, :puma }

get '/api/ruby' do
	content_type :json
	pesan = ENV['PESAN']
  	{ :application => 'ruby', :message => pesan }.to_json
end
