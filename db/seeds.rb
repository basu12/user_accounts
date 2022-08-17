# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#creating the users dummy data
user = User.create(name: 'Alice')
#creating the accounts dummy data
user.accounts.create(name: 'A銀行',balance: 2000)
user.accounts.create(name: 'Bカード',balance: 200)
user.accounts.create(name: 'C信用金庫',balance: 120000)
user.accounts.create(name: 'E銀行',balance: 5000)