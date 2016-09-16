class MakeMovieUrLsNonUnique < ActiveRecord::Migration[5.0]
  def change
    change_column :movies, :api_url, :string, unique: false
    change_column :movies, :image_url, :string, unique: false
  end
end
