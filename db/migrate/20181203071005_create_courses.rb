class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
    	t.string :title
    	t.string :course_slug
    	t.string :description

    	t.boolean :featured, default: false
    	t.boolean :approval, default: true
    end
  end
end
