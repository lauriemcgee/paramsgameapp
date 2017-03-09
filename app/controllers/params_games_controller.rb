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
    @user_number = params["mynumber"]
    @user_number = @user_number.to_i
    @random_number = 36
    @answer = 
    if @user_number == nil
      @no_guess = "You haven't entered anything yet!"
    elsif @user_number == @random_number
      @correct_guess = "You won!"
    elsif @user_number < @random_number
      @higher_guess = "Higher guess, please."
    elsif @user_number > @random_number
      @lower_guess = "Lower guess, please."
    end
    render "params_games_numbers.html.erb"
  end
end




