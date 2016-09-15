class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string    :api_url,     { null: false, unique: true }
      t.string    :image_url,   { null: false, unique: true }
      t.boolean   :is_popular  
      t.boolean   :is_previous
      t.timestamps(null: false)
    end
  end
end
