# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all
Event.destroy_all


crossfit_dc = Company.create!(name: "Crossfit DC", company_type: "Crossfit", img_url: "https://i.embed.ly/1/display/resize?key=1e6a1a1efdb011df84894040444cdc60&url=http%3A%2F%2Fcrossfitdc.com%2Fwp-content%2Fuploads%2F2015%2F09%2FNew-web-logo-1x.png")
flow_yoga = Company.create!(name: "Flow Yoga Center", company_type: "Yoga", img_url: "https://static1.squarespace.com/static/54482313e4b059dd18a323fa/t/54b00e53e4b086f1342f6576/1420824148033/flow-yoga-center-logo.png?format=1000w")
solidcore = Company.create!(name: "Solidcore", company_type: "Group Fitness", img_url: "https://solidcore.co/wp-content/uploads/2016/03/black_logo-e1458008757845.png")
orange_theory = Company.create!(name: "Orange Theory", company_type: "Group Fitness", img_url: "https://www.orangetheorygear.com/templates/ot_gear/site_images/logo.png")
praxis = Company.create!(name: "Praxis", company_type: "Crossfit", img_url: "http://410yvejlnpb19fjl13sqqtvo.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/logoweb.png")


mon_morn_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "2017-6-19 7:00", end_time: "2017-6-19 8:00", location: "1681 Kalorama Rd NW, Washington, DC 20009", company: crossfit_dc)
mon_noon_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "2017-6-19 12:00", end_time: "2017-6-19 1:00", location: "1681 Kalorama Rd NW, Washington, DC 20009", company: crossfit_dc)

wed_morn_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "2017-6-21 7:00", end_time: "2017-6-21 8:00", location: "1681 Kalorama Rd NW, Washington, DC 20009", company: crossfit_dc)
wed__noon_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "2017-6-21 12:00", end_time: "2017-6-21 1:00", location: "1681 Kalorama Rd NW, Washington, DC 20009", company: crossfit_dc)
fri_morn_hierarchy = Event.create!(name: "WOD", event_type: "Crossfit", start_time: "2017-6-23 7:00", end_time: "2017-6-23 8:00", location: "1681 Kalorama Rd NW, Washington, DC 20009", company: crossfit_dc)

mon_morn_flow_yoga = Event.create!(name: "Vinyasa Flow", event_type: "Yoga", start_time: "2017-6-19 8:00", end_time: "2017-6-19 9:00", location: "1508 14th St NW, Washington, DC 20005", company: flow_yoga)
mon_noon_flow_yoga = Event.create!(name: "Vinyasa Flow", event_type: "Yoga", start_time: "2017-6-19 11:45", end_time: "2017-6-19 1:00", location: "1508 14th St NW, Washington, DC 20005", company: flow_yoga)

mon_noon_solidcore = Event.create!(name: "Solidcore", event_type: "Group Fitness", start_time: "2017-6-19 12:30", end_time: "2017-6-19 1:45", location: "1706 Columbia Rd NW, Washington, DC 20009", company: solidcore)
mon_noon_two_solidcore = Event.create!(name: "Solidcore", event_type: "Group Fitness", start_time: "2017-6-19 2:30", end_time: "2017-6-19 3:45", location: "1706 Columbia Rd NW, Washington, DC 20009", company: solidcore)

mon_noon_two_orange_theory = Event.create!(name: "Orange Theory", event_type: "Group Fitness", start_time: "2017-6-19 2:30", end_time: "2017-6-19 3:45", location: "425 I St NW, Washington, DC 20001", company: orange_theory)

mon_noon_two_orange_praxis = Event.create!(name: "Praxis", event_type: "Crossfit", start_time: "2017-6-20 9:45", end_time: "2017-6-20 10:45", location: "2217 14th St NW, Washington, DC 20009", company: praxis)
