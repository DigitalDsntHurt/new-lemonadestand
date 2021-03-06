class SignupAlertMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.signup_alert_mailer.educator_notification.subject
  #

  default from: "LemonadeStand-Signups@yourlemonadestand.org"

  def educator_notification(educator)
    @educator = educator
    mail to: ["k0943718@gmail.com","laurentannenbaum@gmail.com","dan@greensuites.com"], subject: "New Educator Signup on Your Lemonade Stand"
  end
  # "dan@yourlemonadestand.org",

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.signup_alert_mailer.volunteer_notification.subject
  #
  def volunteer_notification(volunteer)
    @volunteer = volunteer
    mail to: ["k0943718@gmail.com","laurentannenbaum@gmail.com","dan@greensuites.com"], subject: "New Entrepreneur Signup on Your Lemonade Stand"
  end
  #"dan@yourlemonadestand.org",
end
