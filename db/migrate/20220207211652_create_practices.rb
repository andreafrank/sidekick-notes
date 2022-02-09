class CreatePractices < ActiveRecord::Migration[6.1]
  def change
    create_table :practices do |t|
      t.string :word
      t.boolean :correctness
      t.string :prompt_level

      t.timestamps
    end
  end
end
