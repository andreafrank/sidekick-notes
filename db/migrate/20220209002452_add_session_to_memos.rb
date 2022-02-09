class AddSessionToMemos < ActiveRecord::Migration[6.1]
  def change
    add_reference :memos, :session, foreign_key: true
  end
end
