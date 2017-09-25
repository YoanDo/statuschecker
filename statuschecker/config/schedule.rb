set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}
every 2.minutes do
  rake 'check:all', :environment => 'development'
end
