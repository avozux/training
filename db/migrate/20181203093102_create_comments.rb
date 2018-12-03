class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	
    	t.string :name
      t.string :email
      t.string :content
      
      t.integer :replies_count
      t.references :chapter, foreign_key: true

      t.timestamps
    end
  end
end
