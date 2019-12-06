class Api::V1::CategoryController < ApplicationController
	def index
		@category_list = Category.all.includes(:columns)
		#@category_list = Category.eager_load(columns: {user: :group}).where('groups.id = ?', group.id)
		render json: @category_list
		@category_list.each do |cl|
			puts "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL#{cl.inspect}"
		end
	end
end
