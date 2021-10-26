class Report < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
  validates :mountain_name, presence: true

end
