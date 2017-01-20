Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/params" => "params_game_app#get_params"

  get "/url_segment_params_url/:wildcard" => "params_game_app#url_segment_params_method"

  get "/url_guess/:number" => "params_game_app#guessnumbers"

  get "/form_get" => "params_game_app#form_get"

  post "/form_post" =>"params_game_app#form_post"
end
