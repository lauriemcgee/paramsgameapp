class ParamsGamesController < ApplicationController
  def params_games_method
    @user_name = params["myname"]
    render "params_games.html.erb"
  end
end
