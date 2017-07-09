class KeywordsController < ApplicationController
	def create
		@patent = Patent.find(params[:patent_id])
		@keyword = @patent.keywords.build(keyword_params)
		@keyword.save
		redirect_to patent_path(@patent)
	end

	def keyword_params
		params.require(:keyword).permit(:kw)
	end

end
