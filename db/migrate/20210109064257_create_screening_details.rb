class CreateScreeningDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :screening_details do |t|
      t.integer :movie_id
      t.integer :screen_id
      t.integer :slot_id
      t.datetime :screening_date

      t.timestamps
    end
  end
end
