class Student < ActiveRecord::Base

   has_and_belongs_to_many :courses

   has_secure_password

   before_save { |user| user.email = email.downcase}

   before_save :create_remember_token





   private

   def create_remember_token

      self.remember_token = SecureRandom.urlsafe_base64

   end

end
