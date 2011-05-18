class Breeze < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :tags
  belongs_to :category

  validates_presence_of :content, :subject, :cat_id
end
