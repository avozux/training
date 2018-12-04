class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|

    	t.string :title
    	t.string :description

    	t.integer :quiz_level
    	t.integer :quiz_type
    	t.string :quiz_topic

      t.string :quiz_question
    	t.string :quiz_answer

    	t.string :quiz_question_a
    	t.boolean :quiz_answer_a
    	t.string :quiz_question_b
    	t.boolean :quiz_answer_b
    	t.string :quiz_question_c
    	t.boolean :quiz_answer_c
    	t.string :quiz_question_d
    	t.boolean :quiz_answer_d

    	t.boolean :featured, default: false
    	t.boolean :approval, default: true

    	t.references :exam, foreign_key: true

      t.timestamps

    end
  end
end