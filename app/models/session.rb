class Session < ApplicationRecord
  belongs_to :plan

  has_many :memos
  accepts_nested_attributes_for :memos

  has_many :practices
  accepts_nested_attributes_for :practices 

  def memos_attributes=(memos_attributes)
    memos_attributes.each do |i, memo_attributes|
      self.memos.build(memo_attributes)
    end
  end

  def practices_attributes=(practices_attributes)
    practices_attributes.each do |i, practice_attributes|
      self.practices.build(practice_attributes)
    end
  end
end
