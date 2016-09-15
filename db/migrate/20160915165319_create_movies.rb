class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string    :api_url,     { null: false, unique: true }
      t.string    :image_url,   { null: false, unique: true }
      t.boolean   :is_popular,  { null: false }
      t.boolean   :is_previous, { null: false }
      t.timestamps(null: false)
    end
  end
end
