class AddApiKeyToJokes < ActiveRecord::Migration[5.0]
  def change
    add_column :jokes, :api_key, :string
  end
end
