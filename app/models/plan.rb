class Plan < ApplicationRecord
  has_many :st_goals, class_name: "Goal"
  has_many :lt_goals, class_name: "Goal"
end
