class DocumentSerializer < ActiveModel::Serializer
  attribute :id
  attribute :title
  attribute :notes
  attribute :created_at
  attribute :updated_at
  attribute :user_id
  attribute :test do 
    #binding.pry
  end
end
