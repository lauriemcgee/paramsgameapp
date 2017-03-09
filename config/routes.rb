Rails.application.routes.draw do
  get "/query_params_name_url" => "params_games#params_games_name_method"
  
  get "/query_params_numbers_url" =>"params_games#params_games_numbers_method"
  
  get "/query_params_numbers_url_variable/:input_variable" =>"params_games#params_games_numbers_variable_method"
  
  get "/home/:this_is_a_variable" => "params_games#home_method"
  
  get "/home" => "params_games#home_method"

  get "/form_params_url" => "params_games#form_params_method"

  post "/form_result_url" => "params_games#form_result_method"

  get "/form_guess_url" => "params_games#form_number_guess"

  post "/guess_result_url" => "params_games#form_answer_result"
end
