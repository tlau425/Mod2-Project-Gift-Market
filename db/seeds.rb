require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

costco = Company.create({company_name: 'Costco', company_desc: "Always Low Prices", dollars: 250000, picture: "https://mobilecontent.costco.com/live/resource/img/static-roadshow/special-events-schedule.jpg"})
amazon = Company.create({company_name: 'Amazon', company_desc: "Jeff Bezo", dollars: 4000000, picture: "https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2016/02/AMAZON-1200x537.png"})
slickdeals = Company.create({company_name: 'Slickdeals', company_desc: "Deals on deals", dollars: 5000000, picture: "https://static.slickdealscdn.com/images/sd_share_logo.png?7845"})
ebay = Company.create({company_name: 'Ebay', company_desc: "Users market", dollars: 5000, picture: "https://cdn2.downdetector.com/static/uploads/logo/ebay-logo.png"})
rakuten = Company.create({company_name: 'Rakuten', company_desc: "Sneaks", dollars: 987400, picture: "https://www.ecomclips.com/wp-content/uploads/%5E8A7D51A633E2E80F14F64E561955EA27BAA8CE7EC801E536BF%5Epimgpsh_fullsize_distr.jpg"})

rarecard = Card.create({name: "Rare Card", value: 50, price: 1000, category_id: 8, company_id: 1})
applebees = Card.create({name: 'Apple Bees', value: 500, price: 400, category_id: 1, company_id: 1, picture: "https://dl52d2tabxpgo.cloudfront.net/001/003/991/m.jpg"})
target = Card.create({name: 'Target', value: 400, price: 250, category_id: 1, company_id: 1, picture: "https://www.svmcards.com/wp-content/uploads/2018/03/Target-1.png"})
toyrus = Card.create({name: 'Toys R Us', value: 275, price: 200, category_id: 8, company_id: 2, picture: "https://advancelocal-adapter-image-uploads.s3.amazonaws.com/image.al.com/home/bama-media/width600/img/news_impact/photo/gift-cardjpg-94069e7909b841d7.jpg"})
chipotle = Card.create({name: 'Chipotle', value: 250, price: 249, category_id: 3, company_id: 3, picture: "https://static.slickdealscdn.com/attachment/1/0/8/7/3/5/9/7974586.attach"})
starbucks = Card.create({name: 'Starbucks', value: 50, price: 10, category_id: 3, company_id: 3, picture: "https://www.dlyted.com/media/cards/starbucks-214.png"})
hm = Card.create({name: 'H&M', value: 200, price: 172, category_id: 3, company_id: 4, picture: "https://bloximages.chicago2.vip.townnews.com/billingsgazette.com/content/tncms/assets/v3/editorial/5/c2/5c256668-87e6-5c7d-bac8-fa56e27c8682/54f4fc18ead38.image.jpg?resize=400%2C400"})
bonchon = Card.create({name: 'Bonchon', value: 100, price: 40, category_id: 3, company_id: 5, picture: "http://thevoiceofkapolei.com/wp-content/uploads/2017/07/Bon_Chon.jpg"})
eyesolution = Card.create({name: 'Eye Solution', value: 200, price: 125, category_id: 7, company_id: 4})
disney = Card.create({name: 'Disney', value: 475, price: 400, category_id: 4, company_id: 4, picture: "https://productimages.nimbledeals.com/gift_card_skin/84ab7664cbdfc6f2d3f0542cd247788"})
amc = Card.create({name: 'AMC', value: 50, price: 25, category_id: 8, company_id: 5, picture: "https://s1.sywcdn.net/getImage?url=https%3A%2F%2Fdnrzlv4wd9rbi.cloudfront.net%2Fassets%2Fproduct-sources%2F31%2Flarge%2Famc-gift-card.png%3F1377813465&t=Product&w=600&h=600&qlt=100&mrg=1&str=1&s=9cc7fb7c0d2b37ee99e7cacf1012873a"})
bills_furniture = Card.create({name: "Bill's Furniture ", value: 120, price: 15, category_id: 8, company_id: 5})
regal = Card.create({name: 'UA Regal', value: 60, price: 40, category_id: 8, company_id: 4, picture: "https://api.shopthemarketplace.com/media/4627/store-logo-regalentertainmentgroup.png"})
dunkindonut = Card.create({name: 'Dunkin Donut', value: 50, price: 25, category_id: 3, company_id: 2, picture: "https://gracefulcoffee.files.wordpress.com/2017/12/dunkindonuts.jpg?w=560"})
chilis = Card.create({name: "Chili's", value: 75, price: 25, category_id: 3, company_id: 5, picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Chili%27s_Logo.svg/2000px-Chili%27s_Logo.svg.png" })
footlocker = Card.create({name: "Footlocker", value: 200, price: 150, category_id: 1, company_id: 2, picture: "https://images.footlocker.com/pi/GCARD21J/zoom/GCARD21J.jpeg"})



clothing = Category.create({name: 'Clothing'})
jewelery = Category.create({name: 'Jewelery'})
food = Category.create({name: 'Food'})
activity = Category.create({name: 'Activity'})
grocery = Category.create({name: 'Grocery'})
cosmetics = Category.create({name: 'Cosmetic'})
eyewear = Category.create({name: 'Eyewear'})
other = Category.create({name: 'Other'})
