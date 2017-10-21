class MessagesController < ApplicationController
    def contact
        new_message
    end

    def scrap
        new_message
    end

    def parts
        new_message
    end

    def create
        @message = Message.new(message_params)
        
        if @message.valid?
            MessageMailer.contact(@message).deliver_now
            redirect_to root_path
        else
            render :new
        end
            
    end

    private
    
    def new_message
        @message = Message.new
    end

    def message_params
        params.require(:message).permit(:name,:email, :phone,:body, :make, :model)
    end
    
end
