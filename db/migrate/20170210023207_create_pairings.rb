class CreatePairings < ActiveRecord::Migration[5.0]
  def change
    create_table :pairings do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :beer_name
      t.string :alcohol

      t.timestamps
    end
  end
end
