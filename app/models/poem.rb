class Poem < ApplicationRecord
  belongs_to :user
  validates :firstline, :secondline, :thirdline, :user, presence: true
end
