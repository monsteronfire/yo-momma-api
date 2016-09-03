class Joke < ApplicationRecord
  before_create do |joke|
    joke.api_key = joke.generate_api_key
  end

  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless Joke.exists?(api_key: token)
    end
  end
end
