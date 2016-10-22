class Course < ActiveRecord::Base

   belongs_to :teacher

   has_many :videos
   has_many :assessments

   has_and_belongs_to_many :students


end
