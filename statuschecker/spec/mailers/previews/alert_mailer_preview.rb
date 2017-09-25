# Preview all emails at http://localhost:3000/rails/mailers/alert_mailer
class AlertMailerPreview < ActionMailer::Preview

  def alert

    AlertMailer.alert(Service)
  end

end
