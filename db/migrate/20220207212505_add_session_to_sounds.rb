class AddSessionToSounds < ActiveRecord::Migration[6.1]
  def change
    add_reference :sounds, :session, foreign_key: true
  end
end
