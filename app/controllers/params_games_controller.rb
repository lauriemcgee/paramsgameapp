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
    @random_number = 36
    if @user_number == nil
      @message = "You haven't entered anything yet!"
    elsif @user_number == @random_number
      @message = "You won!"
    elsif @user_number < @random_number
      @message = "Higher guess, please."
    elsif @user_number > @random_number
      @message = "Lower guess, please."
    end
    render "params_games_numbers.html.erb"
  end
end




