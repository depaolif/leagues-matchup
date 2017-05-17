class CreateChampions < ActiveRecord::Migration[5.0]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :party
      t.json :enemytips
      t.string :image_url
      t.timestamps
    end
  end
end
