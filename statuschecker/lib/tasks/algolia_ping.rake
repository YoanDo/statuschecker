namespace :algolia_ping do
desc "New algolia ping"
task check: :environment do

  Service.all.each do | s |
    if s.name == 'Algolia'
      if AlgoliaStatusService.status === 'operational'
        Ping.create(up: true, service: s)
        puts  'Algolia service is up  ✅'
      else
        Ping.create(up: false, service: s)
        puts  'Algolia service is down  ❌'
        AlertMailer.alert(s).deliver_now
      end
    end
  end
end
end
