class CreateSeatPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :seat_plans do |t|
      t.string :row
      t.integer :number, array: true, default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      t.string :seat_type, default: 0.0
      t.float :price

      t.timestamps
    end
  end
end
