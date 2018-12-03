class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
    	t.string :chapter_title
    	t.integer :chapter_id
      t.string :chapter_url

      t.boolean :followed,  null: false, default: false
      
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :follows, [:chapter_id, :user_id], unique: true
  end
end
