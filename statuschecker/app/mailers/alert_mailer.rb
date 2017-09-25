class AlertMailer < ApplicationMailer

  def alert(service)

    @service = service

    mail(to: 'contact@test.com', subject: 'A service is down')
  end

end
