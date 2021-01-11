class CreateJoinTableScreenSeatPlans < ActiveRecord::Migration[5.2]
  def change
    create_join_table :screens, :seat_plans do |t|
      t.index [:screen_id, :seat_plan_id]
      t.index [:seat_plan_id, :screen_id]
    end
  end
end
