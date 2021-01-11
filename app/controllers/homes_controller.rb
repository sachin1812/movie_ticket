class HomesController < ApplicationController
  def home
    if current_user.user?
      @movies = Movie.all
    end
  end
end
