namespace :check do
    desc "check all services"
    task :all do
       Rake::Task["fb_ping:check"].invoke
       Rake::Task["lithium_ping:check"].invoke
       Rake::Task["algolia_ping:check"].invoke
     end
end
