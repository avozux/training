class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|

    	t.string :title
      t.string :slug
    	t.string :description

      t.string :time

    	t.integer :exam_level
    	t.string :exam_topic
    	t.integer :exam_type

    	t.boolean :featured, default: false
    	t.boolean :approval, default: true

      t.timestamps
      
    end
  end
end
