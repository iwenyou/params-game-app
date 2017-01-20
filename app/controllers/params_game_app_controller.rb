class ParamsGameAppController < ApplicationController
  def get_params
    @name = params[:name]

    if @name[0] == "a"
      @output = "Hey, your name starts with the first letter of the alphabet!"
    end
    render "params.html.erb"
  end

  def url_segment_params_method
    @value = params[:wildcard]
    render url_segment_params.html.erb
  end

  def guessnumbers
    @origin = 31
    @guess = params[:number].to_i

    if @guess < @origin
      @output = "too low"
    elsif @guess > @origin
      @output = "too high"
    else
      @output = "right number"
    end

    render "guessnumber.html.erb"

  end

  def form_get
    render "form_get.html.erb"
  end

  def form_post
    @origin = 31
    @guess = params[:form_message].to_i

    if @guess < @origin
      @output = "too low"
    elsif @guess > @origin
      @output = "too high"
    else
      @output = "right number"
    end
    render "form_post.html.erb"
  end
end
