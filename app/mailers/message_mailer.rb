class MessageMailer < ApplicationMailer
    def contact(message)
        @body = message.body
        @phone = message.phone
        mail to: "to@example.org",
             from: message.email,
             subject: "Test"
    end
end
