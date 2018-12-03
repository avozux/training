class CreateChapters < ActiveRecord::Migration[5.2]
  def self.up
    create_table :chapters do |t|
    	t.string :title
    	t.string :slug
    	t.string :description
    	t.text :body
    	
    	t.string :lesson

    	t.boolean :featured, default: false
      t.boolean :approval, default: true

      t.attachment :thumbnail
      t.attachment :video

      t.integer :questions_count
      t.integer :views_count
    	
      t.timestamps
    end
  end

  def self.down
    remove_attachment :chapters, :thumbnail
    remove_attachment :chapters, :video
  end
end
