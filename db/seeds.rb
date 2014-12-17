# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Outfit.create(
    title: "Black Coat and Jeans",
    description: "Light coat with pants from Revolve",
    temp_min: 55,
    temp_max: 65,
    tag: 'classic',
    # precipitation: 'rain',
    # price: 50,
    # purchase_url: 'http://www.revolveclothing.com/r/hotlist.jsp?navsrc=main',
    img_url: 'http://is4.revolveclothing.com/images/p4/n/z/JAME-WO250_V1.jpg'
  )

Outfit.create(
    title: "Camel coat with Jeans",
    description: "Two tone coat with Jeans",
    temp_min: 52,
    temp_max: 65,
    tag: 'classic',
    # precipitation: 'rain',
    # price: 50,
    # purchase_url: 'http://www.revolveclothing.com/r/hotlist.jsp?navsrc=main',
    img_url: 'http://is4.revolveclothing.com/images/p4/n/z/ONET-WO24_V1.jpg'
  )

Outfit.create(
    title: "Light Coat with Gray Jeans",
    description: "Light Coat with Gray Jeans",
    temp_min: 52,
    temp_max: 65,
    tag: 'classic',
    # precipitation: 'rain',
    # price: 50,
    # purchase_url: 'http://www.revolveclothing.com/r/hotlist.jsp?navsrc=main',
    img_url: 'http://is4.revolveclothing.com/images/p4/n/z/BARD-WO20_V1.jpg'
  )

Outfit.create(
    title: "Tan Coat with Jeans",
    description: "Tan Coat with Black Jeans",
    temp_min: 50,
    temp_max: 65,
    tag: 'classic',
    # precipitation: 'rain',
    # price: 50,
    # purchase_url: 'http://www.revolveclothing.com/r/hotlist.jsp?navsrc=main',
    img_url: 'http://is4.revolveclothing.com/images/p4/n/z/NHOX-WO10_V1.jpg'
  )

Outfit.create(
    title: "Plaid Coat with Black Pants",
    description: "Black and White Plaid Coat with white pants",
    temp_min: 50,
    temp_max: 65,
    tag: 'classic',
    # precipitation: 'rain',
    # price: 50,
    # purchase_url: 'http://www.revolveclothing.com/r/hotlist.jsp?navsrc=main',
    img_url: 'http://is4.revolveclothing.com/images/p4/n/z/MSCO-WO42_V1.jpg'
  )