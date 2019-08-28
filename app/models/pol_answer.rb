class PolAnswer < ApplicationRecord
  belongs_to :politician
  validates :weight, presence: true
end
