class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text    :contents, { null: false }
      t.integer :user_id,  { null: false }
      t.integer :movie_id, { null: false }

      t.timestamps(null: false)
    end
  end
end
