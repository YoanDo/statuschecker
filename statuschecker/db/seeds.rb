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
{
  name: "Lithium",
  web_api: "http://kf381dthp5rd.statuspage.io/api/v2/status.json",
  json_path: "['status']['indicator']"
},
{
  name: "Algolia",
  web_api: "https://status.algolia.com/1/status/c4-fr",
  json_path: "['status']['c4-fr']"
},

])

p "Created #{Service.count} services"
