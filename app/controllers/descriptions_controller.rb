class DescriptionsController < ApplicationController
	def create
		@patent = Patent.find(params[:patent_id])
		@description = @patent.descriptions.build(description_params)
		@description.save
		redirect_to patent_path(@patent)
	end

	def description_params
		params.require(:description).permit(:body)
	end
end
