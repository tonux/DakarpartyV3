class UserMailer < ActionMailer::Base
  default from: "tonux@alwaysdata.com"
 
  def welcome_email(user)
    @user = user
    @url  = "http://dakarparty.com/sign_in"
    mail(:to => user.email, :subject => "Bienvenue dans le site DakarParty")
  end 
end
