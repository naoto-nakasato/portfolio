class AddColumnsToWomen < ActiveRecord::Migration[5.2]
  def change
    add_column :women, :uid, :string
    add_column :women, :provider, :string
    add_column :women, :name, :string
    add_column :women, :image, :string
    add_column :women, :age, :integer
    add_column :women, :introduction, :string
    add_column :women, :residence, :string
  end
end
