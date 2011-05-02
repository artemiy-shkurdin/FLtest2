class User < ActiveRecord::Base

  has_many :breezes

  validates_presence_of :mail, :name, :encrypted_password
  validates_uniqueness_of :name, :message => "User with the same name is already exists!"
  validates_uniqueness_of :mail, :message => "User with the same e-mail address is already exists!"
  validates_format_of :mail,:with => /([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})/i ,
                      :message => "Wrong e-mail address format!"
end