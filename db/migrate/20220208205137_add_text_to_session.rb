class AddTextToSession < ActiveRecord::Migration[6.1]
  def change
    add_column :sessions, :text, :string
  end
end
