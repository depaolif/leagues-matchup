class ChangeChampions < ActiveRecord::Migration[5.0]
  def change
    rename_column :champions, :image_url, :loading_splash
    add_column :champions, :icon, :string
  end
end
