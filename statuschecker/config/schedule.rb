set :environment, "development"
every 2.minutes do
  rake "check:all"
end
