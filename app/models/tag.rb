class Tag < ActiveRecord::Base

  has_and_belongs_to_many :breezes

  validates_presence_of :name

end
