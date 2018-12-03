class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :log_type
      
    	t.integer :chapter_id
      t.string :chapter_url

      t.integer :exam_id
      t.string :exam_url

      t.boolean :received,  null: false, default: false
      
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :logs, [:chapter_id, :exam_id, :user_id], :unique => true
  end
end
