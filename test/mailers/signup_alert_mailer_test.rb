require 'test_helper'

class SignupAlertMailerTest < ActionMailer::TestCase
  test "educator_notification" do
    mail = SignupAlertMailer.educator_notification
    assert_equal "Educator notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "volunteer_notification" do
    mail = SignupAlertMailer.volunteer_notification
    assert_equal "Volunteer notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
