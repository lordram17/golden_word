class Teacher < ActiveRecord::Base

   has_many :courses

   has_many :videos
   has_many :assessments

end
