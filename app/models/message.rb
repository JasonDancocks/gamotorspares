class Message 
    include ActiveModel::Model
    attr_accessor :name, :email, :phone, :body, :make, :model, :contact_type
    validates :name, :email, :body, presence: true
    
end
