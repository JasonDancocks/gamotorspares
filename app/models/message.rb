class Message 
    include ActiveModel::Model
    attr_accessor :name, :email, :phone, :body, :make, :model
    validates :name, :email, :body, presence: true
    
end
