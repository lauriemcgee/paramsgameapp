class ParamsGamesController < ApplicationController
  def params_games_method
    @user_name = params["myname"]
    @a_name = "Hey, your name starts with an A!"
    render "params_games.html.erb"
  end
end
