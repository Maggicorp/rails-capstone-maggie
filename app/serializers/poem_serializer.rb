class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title, :firstline, :secondline, :thirdline, :published
  # has_one :user
end
