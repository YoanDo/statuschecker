# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.destroy_all

Service.create!([{
  name: "Facebook",
  web_api: "https://www.facebook.com/platform/api-status/",
  json_path: "['current']['health']"
},
# {
#   title: "Pixels",
#   director: "Chris Columbus",
#   storyline: "When aliens misinterpret video feeds of classic arcade games as a declaration of war, they attack the Earth in the form of the video games.",
#   watched_on: 3.days.ago
# },
# {
#   title: "Terminator Genisys",
#   director: "Alan Taylor",
#   storyline: "When John Connor, leader of the human resistance, sends Sgt. Kyle Reese back to 1984 to protect Sarah Connor and safeguard the future, an unexpected turn of events creates a fractured timeline. Now, Sgt. Reese finds himself in a new and unfamiliar version of the past, where he is faced with unlikely allies, including the Guardian, dangerous new enemies, and an unexpected new mission: To reset the future...",
#   watched_on: 10.days.ago
# }

])

p "Created #{Service.count} services"
