class CreateVideos < ActiveRecord::Migration
  def change


      create_table  :videos do |t|
       t.string :name

       t.string :description

       t.timestamps null: false

       t.belongs_to :teacher, index: true
       t.belongs_to :course, index: true

     end
  end
end
