# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Merchant.create(name: "merchant_one")
Merchant.create(name: "merchant_two")
Merchant.create(name: "merchant_three")
Merchant.create(name: "merchant_four")
Merchant.create(name: "merchant_five")


Cart.create(principal_amount: 1.11)
Cart.create(principal_amount: 2.22)
Cart.create(principal_amount: 3.33)
Cart.create(principal_amount: 4.44)
Cart.create(principal_amount: 5.55)
Cart.create(principal_amount: 6.66)
Cart.create(principal_amount: 7.77)
Cart.create(principal_amount: 8.88)
Cart.create(principal_amount: 9.99)
Cart.create(principal_amount: 10.10)
Cart.create(principal_amount: 11.11)
Cart.create(principal_amount: 12.12)

Order.create(merchant_id: 1, order_number: "1#BBB123", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:1, shipped_cart_id: 2)
Order.create(merchant_id: 1, order_number: "1#BBB124", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:3, shipped_cart_id: 4, updated_at: Time.now - 1.week)
Order.create(merchant_id: 1, order_number: "1#BBB125", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:5, shipped_cart_id: 6, updated_at: Time.now - 1.week)
Order.create(merchant_id: 2, order_number: "2#BBB123", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:7, shipped_cart_id: 8)
Order.create(merchant_id: 2, order_number: "2#BBB124", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:9, shipped_cart_id: 10, updated_at: Time.now - 1.week)
Order.create(merchant_id: 2, order_number: "2#BBB125", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:11, shipped_cart_id: 12, updated_at: Time.now - 1.week)
