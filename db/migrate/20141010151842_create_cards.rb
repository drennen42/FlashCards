class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.string :wrong_answer
      t.string :wrong_answer2
      t.string :wrong_answer3
      t.belongs_to :deck
      t.timestamps
    end
  end
end
