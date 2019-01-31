class CreateReseves < ActiveRecord::Migration[5.2]
  def change
    create_table :reseves do |t|
      t.string :place
      t.integer :people
      t.time :date_time
      t.string :age
      t.integer :stay_time
      t.integer :man_id

      t.timestamps
    end
  end
end
