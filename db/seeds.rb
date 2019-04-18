require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tommy = User.create({user_name: 'Tommy', password_digest: 'ayoo'})
jon = User.create({user_name: 'Jon', password_digest: 'hello'})
tony = User.create({user_name: 'Tony', password_digest: 'mypassword'})
hello = User.create({user_name: 'Hello', password_digest: '123'})


costco = Company.create({company_name: 'Costco', company_desc: "Always Low Prices", dollars: 250000})
amazon = Company.create({company_name: 'Amazon', company_desc: "Jeff Bezo", dollars: 4000000})
slickdeals = Company.create({company_name: 'Slickdeals', company_desc: "Deals on deals", dollars: 5000000})
ebay = Company.create({company_name: 'Ebay', company_desc: "Users market", dollars: 5000})
rakuten = Company.create({company_name: 'Rakuten', company_desc: "Sneaks", dollars: 987400})


applebees = Card.create({name: 'Apple Bees', value: 500, price: 400, category_id: 1, company_id: 1})
target = Card.create({name: 'target', value: 400, price: 250, category_id: 1, company_id: 1})
toyrus = Card.create({name: 'Toys R Us', value: 275, price: 200, category_id: 8, company_id: 2})
chipotle = Card.create({name: 'Chipotle', value: 250, price: 249, category_id: 3, company_id: 3})
starbucks = Card.create({name: 'Starbucks', value: 50, price: 10, category_id: 3, company_id: 3})
hm = Card.create({name: 'H&M', value: 200, price: 172, category_id: 3, company_id: 4})
bonchon = Card.create({name: 'Bonchon', value: 100, price: 40, category_id: 3, company_id: 5})
disney = Card.create({name: 'Disney', value: 475, price: 400, category_id: 4, company_id: 4})
amc = Card.create({name: 'AMC', value: 50, price: 25, category_id: 8, company_id: 5})
regal = Card.create({name: 'UA Regal', value: 60, price: 40, category_id: 8, company_id: 4})
dunkindonut = Card.create({name: 'Dunkin Donut', value: 50, price: 25, category_id: 3, company_id: 2})




clothing = Category.create({name: 'Clothing'})
jewelery = Category.create({name: 'Jewelery'})
food = Category.create({name: 'Food'})
activity = Category.create({name: 'Activity'})
grocery = Category.create({name: 'Grocery'})
cosmetics = Category.create({name: 'Cosmetic'})
eyewear = Category.create({name: 'Eyewear'})
other = Category.create({name: 'Other'})
