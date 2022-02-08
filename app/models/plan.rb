class Plan < ApplicationRecord
  has_many :st_goals, class_name: "Goal"
  has_many :lt_goals, class_name: "Goal"
  has_many :sessions
  accepts_nested_attributes_for :sessions

  def plans_attributes=(plans_attributes)
    plans_attributes.each do |i, plan_attributes|
      self.plans.build(plan_attributes)
    end
  end
end
