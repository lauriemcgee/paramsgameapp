Rails.application.routes.draw do
  get "/query_params_name_url" => "params_games#params_games_name_method"
  get "query_params_numbers_url" =>"params_games#params_games_numbers_method"
end
