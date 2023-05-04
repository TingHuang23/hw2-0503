class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string "title"
      t.intager "year_released"
      t.string "MPAA"
      t.string "studio"
      t.timestamps
    end
  end
end
