Rails.application.routes.draw do
  get "/query_params_name" => "params_games#params_games_method"
end
