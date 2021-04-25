class User < ApplicationRecord

  has_many :documents

  validates :firstname, presence: true
  validates :lastname, presence: true
end
