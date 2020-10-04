class NewsController < ApplicationController
	#Skip authencate user so without login user should be able to view news
	skip_before_action :authenticate_user!, only: [:index]

	# Fetch all the News with cookies and without cookies
	def index
		#Check if data available in the cookies or not, if available the filter only with specific categories.
		#This condition Works only if user logged in
		@cookie_ids = (current_user.present? && cookies['category_ids'].present?) ? cookies['category_ids'].split('&') : []
		@news = if @cookie_ids.present?
							News.joins(:category).where(category_id: @cookie_ids).order(updated_at: :desc)
						else
							News.order(updated_at: :desc)
						end

	end

	# Increse the count of a report on user visit
	def increase_count
		@news = News.find(params[:id])
		click_count = @news.click_count + 1
		@news.update_attributes(click_count: click_count)
	end

	# Fetch all the News with params data 
	def search
		# Set cookies with requested category
		cookies[:category_ids] = params[:category_ids]
		#Check if any parameter available.
		@news = if params[:category_ids].any?
							News.joins(:category).where(category_id: params[:category_ids].reject(&:blank?)).order(updated_at: :desc)
						else
							News.order(updated_at: :desc)
						end
	end
end
