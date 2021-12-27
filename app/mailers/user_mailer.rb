class UserMailer < ApplicationMailer
  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation#user model
    @greeting = "Hi"
    @user=params[:user]
    #@now = Date.today+ 7.days

    mail(
      from: "shireesha967@gmail.com",
      to: @user.email,
      subject: "subject"
      #to: "radhasri967@gmail.com",
      
       #bcc:
    )
  end
end
