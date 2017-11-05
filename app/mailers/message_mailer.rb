class MessageMailer < ApplicationMailer
    def contact(message)
        @message = message
        mail to: "gamotorspares@gmail.com",
             from: message.email,
             subject: "New Message: #{message.contact_type}"
    end
end
