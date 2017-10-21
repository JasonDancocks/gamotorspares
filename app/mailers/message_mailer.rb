class MessageMailer < ApplicationMailer
    def contact(message)
        @message = message
        mail to: "contact@gamotorspares.com",
             from: message.email,
             subject: "New Message"
    end
end
