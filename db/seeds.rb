# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all
Event.destroy_all

hierarchy = Company.create!(name: "Crossfit Hierarchy", company_type: "Crossfit", img_url: "http://crossfithierarchy.com/images/northwest.jpg")
flow_yoga = Company.create!(name: "Flow Yoga Center", company_type: "Yoga", img_url: "https://static1.squarespace.com/static/54482313e4b059dd18a323fa/t/54b00e53e4b086f1342f6576/1420824148033/flow-yoga-center-logo.png?format=1000w")
solidcore = Company.create!(name: "Solidcore", company_type: "Group Fitness", img_url: "https://solidcore.co/wp-content/uploads/2016/03/black_logo-e1458008757845.png")


mon_morn_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "7:00", end_time: "8:00", location: "1681 Kalorama Rd NW, Washington, DC 20009", event_date: "6-19-2017", company: hierarchy)

mon_noon_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "12:00 PM", end_time: "1:00 PM", location: "1681 Kalorama Rd NW, Washington, DC 20009", event_date: "2017-06-19", company: hierarchy)

wed_morn_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "7:00 AM", end_time: "8:00 AM", location: "1681 Kalorama Rd NW, Washington, DC 20009", event_date: "6/21/2017", company: hierarchy)
wed__noon_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "12:00 PM", end_time: "1:00 PM", location: "1681 Kalorama Rd NW, Washington, DC 20009", event_date: "6/21/2017", company: hierarchy)
fri_morn_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "7:00 AM", end_time: "8:00 AM", location: "1681 Kalorama Rd NW, Washington, DC 20009", event_date: "6/23/2017", company: hierarchy)

mon_morn_flow_yoga = Event.create!(name: "Vinyasa Flow", event_type: "Yoga", start_time: "8:00 AM", end_time: "9:00 AM", location: "1508 14th St NW, Washington, DC 20005", event_date: "6/19/2017", company: flow_yoga)
mon_noon_flow_yoga = Event.create!(name: "Vinyasa Flow", event_type: "Yoga", start_time: "11:45 AM", end_time: "1:00 PM", location: "1508 14th St NW, Washington, DC 20005", event_date: "6/19/2017", company: flow_yoga)

mon_noon_solidcore = Event.create!(name: "solidcore", event_type: "Group Fitness", start_time: "12:30 PM", end_time: "1:45 PM", location: "1706 Columbia Rd NW, Washington, DC 20009", event_date: "6/19/2017", company: solidcore)
mon_noon_two_solidcore = Event.create!(name: "solidcore", event_type: "Group Fitness", start_time: "2:30 PM", end_time: "3:45 PM", location: "1706 Columbia Rd NW, Washington, DC 20009", event_date: "6/19/2017", company: solidcore)
