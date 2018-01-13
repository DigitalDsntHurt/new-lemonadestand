# Preview all emails at http://localhost:3000/rails/mailers/signup_alert_mailer
class SignupAlertMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/signup_alert_mailer/educator_notification
  def educator_notification
    SignupAlertMailer.educator_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/signup_alert_mailer/volunteer_notification
  def volunteer_notification
    SignupAlertMailer.volunteer_notification
  end

end
