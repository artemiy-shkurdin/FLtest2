class Category < ActiveRecord::Base

  has_many :breezes
  validates_presence_of :name
  validates_uniqueness_of :name

end
