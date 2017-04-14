class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(order)
     @order = order

    mail(to: 'maxbergen1234@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
