class AddSessionToPlans < ActiveRecord::Migration[6.1]
  def change
    add_reference :plans, :session, null: false, foreign_key: true
  end
end
