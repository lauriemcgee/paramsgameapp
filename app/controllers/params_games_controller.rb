class ParamsGamesController < ApplicationController
  def params_games_name_method
    @user_name = params["myname"].upcase
    if @user_name.starts_with?("A")
      @message = "Hey, your name starts with an A!"
    else
      @message = "Hey, your name doesn't start with an A!"
    end
    render "params_games_name.html.erb"
  end
  
  def params_games_numbers_method
    @user_number = params["mynumber"].to_i
    random_number = 36
    if @user_number == nil
      @message = "You haven't entered anything yet!"
    elsif @user_number == random_number
      @message = "You won!"
    elsif @user_number < random_number
      @message = "Higher guess, please."
    elsif @user_number > random_number
      @message = "Lower guess, please."
    end
    render "params_games_numbers.html.erb"
  end
  def params_games_numbers_variable_method
    @user_variable = params["input_variable"].to_i
     random_number = 36
    if @user_variable == nil
      @message = "You haven't entered anything yet!"
    elsif @user_variable == random_number
      @message = "You won!"
    elsif @user_variable < random_number
      @message = "Higher guess, please."
    elsif @user_variable > random_number
      @message = "Lower guess, please."
    end
    render "params_games_numbers_variable.html.erb"
  end
  def home_method
    @url_variable = params["this_is_a_variable"]
    render "homepage.html.erb"
  end
  def form_params_method
    render "params_form.html.erb"
  end
  def form_result_method
    render "form_result.html.erb"
  end
  def form_number_guess
    render "form_guess.html.erb"
  end
  def form_answer_result
    @answer = params["form_number"].to_i
    random_number = 36
    if @answer == nil
      @message = "You haven't entered anything yet!"
    elsif @answer == random_number
      @message = "YOU WON!"
      render "guess_result.html.erb"
    elsif @answer < random_number
      @message = "Higher guess, please."
      render "lower_guess.html.erb"
    elsif @answer > random_number
      @message = "Lower guess, please."
      render "lower_guess.html.erb"
    end
    
  end
end




