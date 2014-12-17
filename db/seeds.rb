# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Outfit.create(
    title: "",
    description: "Vest with pants from Revolve",
    temp_min: 60,
    temp_max: 65,
    tag: 'rain',
    # precipitation: 'rain',
    # price: 50,
    # purchase_url: 'http://www.revolveclothing.com/r/hotlist.jsp?navsrc=main',
    img_url: 'http://is4.revolveclothing.com/images/hl_hover_stl.png'
  )


