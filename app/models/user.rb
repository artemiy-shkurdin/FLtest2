class User < ActiveRecord::Base

  acts_as_authentic
  has_many :breezes

#  attr_accessor :new_password, :new_password_confirmation

#  validates :name, :presence => true,
#            :uniqueness => true
#  validates :mail, :presence => true,
#          :uniqueness => true,
#          :format => {:with => Devise.email_regexp}


#    validates_confirmation_of :new_password, :if=>:password_changed?

#    before_save :hash_password

#    def password_changed?
#      !@new_password.blank?
#    end

#    private
#    def hash_password
#      self.salt = ActiveSupport::SecureRandom.base64(8)
#      self.crypted_password = Digest::SHA2.hexdigest(self.salt + self.new_password)
#   end

#    def self.authenticate(email, password)
#      if user = find_by_email(email)
#        if user.crypted_password == Digest::SHA2.hexdigest(user.salt + new_password)
#          return user
#        end
#      end
#      return nil
#  end

end