class AddSessionToPractices < ActiveRecord::Migration[6.1]
  def change
    add_reference :practices, :session, null: false, foreign_key: true
  end
end
