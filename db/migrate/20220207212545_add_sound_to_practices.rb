class AddSoundToPractices < ActiveRecord::Migration[6.1]
  def change
    add_reference :practices, :sound, foreign_key: true
  end
end
