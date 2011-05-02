class Cat < ActiveRecord::Base

  validates_inclusion_of :name
  validates_uniqueness_of :name

  has_and_belongs_to_many :breezes

end
