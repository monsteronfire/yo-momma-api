class Joke < ApplicationRecord
  def index
    @jokes = Joke.all
    render json: @jokes
  end

  def show
    render json: @animal
  end
end
