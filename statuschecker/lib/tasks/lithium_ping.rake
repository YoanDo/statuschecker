namespace :lithium_ping do
desc "New lithium ping"
task check: :environment do

  Service.all.each do | s |
    if s.name == 'Lithium'
      if LithiumStatusService.status === 'none' || LithiumStatusService.status === 'minor'
        Ping.create(up: true, service: s)
        puts  'Lithium service is up  ✅'
      else
        Ping.create(up: false, service: s)
        puts  'Lithium service is down  ❌'
      end
    end
  end
end
end
