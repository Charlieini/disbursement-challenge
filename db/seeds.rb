# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Merchant.create(name: "merchant_one")

Cart.create(principal_amount: 100.10)
Cart.create(principal_amount: 50.23)

Order.create(merchant_id: 1, order_number: "O#BBB123", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:1, shipped_cart_id: 2)
Order.create(merchant_id: 1, order_number: "O#BBB124", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:1, shipped_cart_id: 2, updated_at: Time.now - 1.week)
Order.create(merchant_id: 1, order_number: "O#BBB125", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:1, shipped_cart_id: 2, updated_at: Time.now - 1.week)
