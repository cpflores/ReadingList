class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating
  	#:author, :review, :rating, :genre_id, :amazaon_id
end
