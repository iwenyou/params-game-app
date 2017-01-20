class ParamsGameAppController < ApplicationController
  def get_params
    @name = params[:name]

    if @name[0] == "a"
      @output = "Hey, your name starts with the first letter of the alphabet!"
    end
    render "params.html.erb"
  end
end
