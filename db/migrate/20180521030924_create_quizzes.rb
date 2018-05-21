class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.text :question
      t.integer :answer
      t.timestamps
    end
    add_index :quizzes, :question
  end
end
