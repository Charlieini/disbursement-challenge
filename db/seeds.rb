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


Cart.create(principal_amount: 100)
Cart.create(principal_amount: 200)
Cart.create(principal_amount: 300)
Cart.create(principal_amount: 400)
Cart.create(principal_amount: 500)
Cart.create(principal_amount: -600)
Cart.create(principal_amount: 700)
Cart.create(principal_amount: 800)
Cart.create(principal_amount: 900)
Cart.create(principal_amount: 1000)
Cart.create(principal_amount: 1100)
Cart.create(principal_amount: 1200)
Cart.create(principal_amount: 606.06)

Order.create(merchant_id: 1, order_number: "1#BBB123", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:1, shipped_cart_id: 2)
Order.create(merchant_id: 1, order_number: "1#BBB124", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:3, shipped_cart_id: 4, updated_at: Time.now - 1.week)
Order.create(merchant_id: 1, order_number: "1#BBB125", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:5, shipped_cart_id: 6, updated_at: Time.now - 1.week)
Order.create(merchant_id: 2, order_number: "2#BBB123", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:7, shipped_cart_id: 8)
Order.create(merchant_id: 2, order_number: "2#BBB124", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:9, shipped_cart_id: 10, updated_at: Time.now - 1.week)
Order.create(merchant_id: 2, order_number: "2#BBB125", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 1.week, unshipped_cart_id:11, shipped_cart_id: 12, updated_at: Time.now - 1.week)
Order.create(merchant_id: 1, order_number: "1#BBB126", confirmed_at: Time.now - 1.month, shipped_at:Time.now - 2.week, unshipped_cart_id:5, shipped_cart_id: 6, updated_at: Time.now - 2.week)



Disbursement.create(merchant_id:1, created_at: Time.now - 1.week)

Installment.create(disbursement_id: 1, order_id: 7, amount:606.06)

DisbursementBuilder.run_weekly
