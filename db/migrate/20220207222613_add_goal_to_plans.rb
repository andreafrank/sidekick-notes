class AddGoalToPlans < ActiveRecord::Migration[6.1]
  def change
    add_reference :plans, :st_goal, foreign_key: { to_table: :goals }
    add_reference :plans, :lt_goal, foreign_key: { to_table: :goals }
  end
end
