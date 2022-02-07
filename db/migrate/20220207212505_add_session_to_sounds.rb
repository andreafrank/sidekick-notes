class AddSessionToSounds < ActiveRecord::Migration[6.1]
  def change
    add_reference :sounds, :session, null: false, foreign_key: true
  end
end
