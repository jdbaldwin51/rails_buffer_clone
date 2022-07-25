class PasswordMailer < ApplicationMailer

  # Subject can be set in your Il8n file at config/locales/en.yml
  # with the following lookup:

  #     en.password_mailer.reset.subject
  
  def reset
    params[:user]

    mail to: params[:user].email
  end
end

