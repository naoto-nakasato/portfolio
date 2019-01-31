class AddColumnsToMen < ActiveRecord::Migration[5.2]
  def change
    add_column :men, :uid, :string
    add_column :men, :provider, :string
    add_column :men, :name, :string
    add_column :men, :image, :string
    add_column :men, :age, :integer
    add_column :men, :introduction, :string
    add_column :men, :residence, :string
  end
end
