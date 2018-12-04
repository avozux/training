class CreateExaminations < ActiveRecord::Migration[5.2]
  def change
    create_table :examinations do |t|
    	t.string :exam_type

      t.integer :exam_id
      t.string :exam_url

      t.decimal :score, precision: 10
      t.string :time

      t.boolean :received,  null: false, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :examinations, [:exam_id, :user_id], :unique => true
  end
end
