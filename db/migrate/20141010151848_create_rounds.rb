class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :number_correct
      t.belongs_to :user
      t.belongs_to :deck
      t.timestamps
    end
  end
end
