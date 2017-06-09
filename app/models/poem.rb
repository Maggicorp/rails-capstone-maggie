class Poem < ApplicationRecord
  belongs_to :user
  validates :title, :firstline, :secondline, :thirdline, :user, presence: true
end
