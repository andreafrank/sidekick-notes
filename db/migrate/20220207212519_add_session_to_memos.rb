class AddSessionToMemos < ActiveRecord::Migration[6.1]
  def change
    add_reference :memos, :session, null: false, foreign_key: true  
  end
end
