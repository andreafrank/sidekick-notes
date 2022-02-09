class Plan < ApplicationRecord
  has_many :st_goals, class_name: "Goal"
  has_many :lt_goals, class_name: "Goal"

  has_many :sessions
  accepts_nested_attributes_for :sessions

  has_many :memos, :through => :sessions
  accepts_nested_attributes_for :memos

  has_many :practices, :through => :sessions
  accepts_nested_attributes_for :practices

  def plans_attributes=(plans_attributes)
    plans_attributes.each do |i, plan_attributes|
      self.sessions.build(plan_attributes)
    end
  end
end
