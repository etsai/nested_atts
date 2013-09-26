class Question < ActiveRecord::Base
  attr_accessible :title, :answers_attributes
  validates_presence_of :title
  belongs_to :survey
  has_many :answers
  accepts_nested_attributes_for :answers
end
