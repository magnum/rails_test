class Document < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
end
