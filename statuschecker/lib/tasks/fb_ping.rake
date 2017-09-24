namespace :fb_ping do
desc "New fb ping"
task check: :environment do

   @services.each do | s |

    if @fb_status == 1
      Ping.create(up: true, service: s)
    else
      Ping.create(up: false, service: s)
    end
  end
end
end
