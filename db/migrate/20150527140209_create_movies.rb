class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :rating
      t.references :genre, index: true
      t.references :actor, index: true

      t.timestamps
    end
  end
end
