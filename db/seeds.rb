# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding..."

Category.find_or_create_by(name: 'Coffee')
Category.find_or_create_by(name: 'Sandwiches')
Category.find_or_create_by(name: 'Juices')
Category.find_or_create_by(name: 'Pizzas')

Tax.find_or_create_by(code: 'COF001', percentage: 5)
Tax.find_or_create_by(code: 'PIZ012', percentage: 7)
Tax.find_or_create_by(code: 'SAN011', percentage: 6)

Discount.find_or_create_by(discount_type: Discount.discount_types[:free], percentage: 100)
Discount.find_or_create_by(discount_type: Discount.discount_types[:combo], percentage: 20)
Discount.find_or_create_by(discount_type: Discount.discount_types[:flat_rate], percentage: 10)
Discount.find_or_create_by(discount_type: Discount.discount_types[:zero], percentage: 0)

PaymentMethod.find_or_create_by(payment_type: PaymentMethod.payment_types[:card])
PaymentMethod.find_or_create_by(payment_type: PaymentMethod.payment_types[:online_banking])
PaymentMethod.find_or_create_by(payment_type: PaymentMethod.payment_types[:cash])

puts "Seeding done."