class HomeController < ApplicationController
  def index
  	if (params.has_key?(:answer))
			answer = params[:answer]
			@result = eval(answer.to_s)
			redirect_to action: 'index', result: @result
	end
  end
end

