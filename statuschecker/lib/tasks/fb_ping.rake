namespace :fb_ping do
desc "New fb ping"
task check: :environment do

  Service.all.each do | s |
    if s.name == 'Facebook'
      if FacebookStatusService.status === 1
        Ping.create(up: true, service: s)
        puts  'FB service is up  ✅'
      else
        Ping.create(up: false, service: s)
        puts  'FB service is down  ❌'
        AlertMailer.alert(s).deliver_now
      end
    end
  end
end
end
