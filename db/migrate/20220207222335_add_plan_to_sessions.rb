class AddPlanToSessions < ActiveRecord::Migration[6.1]
  def change
    add_reference :sessions, :plan, null: false, foreign_key: true
  end
end
