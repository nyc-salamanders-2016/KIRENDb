class RemoveIsPreviousFromMovies < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :is_previous, :boolean
  end
end
