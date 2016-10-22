class CreateStudents < ActiveRecord::Migration
  def change

     create_table :students do |t|

      t.string :name
      t.string :email

      t.timestamps null: false

    end

    create_table :assessments do |t|

     t.string :name
     t.string :description

     t.timestamps null: false

     t.belongs_to :teacher, index: true
     t.belongs_to :course, index: true

  end

  create_table  :videos do |t|
   t.string :name

   t.string :description

   t.timestamps null: false

   t.belongs_to :teacher, index: true
   t.belongs_to :course, index: true

 end

  end
end
