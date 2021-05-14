class Subject
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :auther, type: String

  belongs_to :user
end
