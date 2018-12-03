class CreateTopics < ActiveRecord::Migration[5.2]
  def self.up
    create_table :topics do |t|
    	t.string :title
    	t.string :topic_slug
    	t.string :description

      t.integer :course_id

    	t.boolean :featured, default: false
    	t.boolean :approval, default: true

    	t.attachment :thumbnail
    end
  end

  def self.down
  	remove_attachment :topics, :thumbnail
  end
end
