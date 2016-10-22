class CreateCourses < ActiveRecord::Migration
  def change


         create_table :course do |t|

           t.string :name
           t.string :description

           t.timestamps null: false

           t.belongs_to :teacher, index: true
         end

         create_table :course_student, id:false do |t|
            t.belongs_to :course, index: true
            t.belongs_to :students, index: true
         end
  end
end
