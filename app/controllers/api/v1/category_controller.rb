class Api::V1::CategoryController < ApplicationController
	def index
		@category_list = Category.all
		puts "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL#{@category_list.inspect}"
	end
end
