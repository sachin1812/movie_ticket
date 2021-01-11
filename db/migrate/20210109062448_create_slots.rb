class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
