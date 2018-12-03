class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
    	t.string :admin
      t.string :email
      t.string :content
      
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
