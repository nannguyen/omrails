class FeedController < ApplicationController
	# before_action :authenticate_user!

	def show
		@tweets = Tweet.all
	end

end
