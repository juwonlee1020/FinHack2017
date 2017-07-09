class PatentsController < ApplicationController
	def index
		@patent = Patent.all
	end

	def new
		@patent = Patent.new
	end

	def create
		@patent = Patent.new(patent_params)
		if @patent.save
			redirect_to @patent
		else
			render 'new'
		end
	end

	def show
		@patent = Patent.find(params[:id])
	end
	
	def edit
		@patent = Patent.find(params[:id])
	end

	def update
		@patent = Patent.find(params[:id])
		if @patent.update_attributes(patent_params)
			redirect_to "show"
		end
	end

	def patent_params
		params.require(:patent).permit(:title, :country, :kind, :category,:division,:status)
	end


end
