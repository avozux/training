class CreateLessons < ActiveRecord::Migration[5.2]
  def self.up
    create_table :lessons do |t|
    	t.string :title
    	t.string :lesson_slug
    	t.string :description

      t.string :author

      t.integer :chapters_count

    	t.boolean :featured, default: false
    	t.boolean :approval, default: true
    	
      t.references :topic, foreign_key: true
    end
  end

  def self.down
  	remove_attachment :lessons, :thumbnail
  end
end
