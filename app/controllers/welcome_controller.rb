class WelcomeController < ApplicationController
	require 'flickraw'

	def index
		FlickRaw.api_key			 = ENV['FLICKR_KEY']
		FlickRaw.shared_secret = ENV['FLICKR_SECRET']
	end
end