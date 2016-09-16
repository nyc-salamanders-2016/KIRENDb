class CreateMoviesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :movies_users do |t|
      t.integer :user_id,   { null: false }
      t.integer :movie_id,  { null: false }
      t.timestamps(null: false)
    end
  end
end
