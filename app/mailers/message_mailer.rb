class MessageMailer < ApplicationMailer
    def contact(message)
        @message = message
        mail to: "to@example.org",
             from: message.email,
             subject: "Test"
    end
end
