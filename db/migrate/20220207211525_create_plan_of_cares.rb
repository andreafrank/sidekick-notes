class CreatePlanOfCares < ActiveRecord::Migration[6.1]
  def change
    create_table :plan_of_cares do |t|
      t.string :text

      t.timestamps
    end
  end
end
