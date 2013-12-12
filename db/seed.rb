# Cleaning Out
Network.delete_all
Show.delete_all
Movie.delete_all

amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
cw = Network.create(name: "CW")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Arrow", day_of_week: "Wednesday", hour_of_day: 21, network: cw)
Show.create(name: "The Big Bang Theory", day_of_week: "Thrusday", hour_of_day: 20, network: nbc)

Movie.create(name: "Hunger Games", leadActor: "Josh Hutcherson", leadActress: "Jennifer Lawrance", year_of_release: 2013)
Movie.create(name: "My Movie", leadActor: "DEF", leadActress: "ABC", year_of_release: 2013)