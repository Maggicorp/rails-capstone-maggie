class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title, :firstline, :secondline, :thirdline
  has_one :user
end
