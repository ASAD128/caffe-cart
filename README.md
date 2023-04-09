# README
Caffe Cart - A simple application to order your favorite coffee shop items

## Features

User is able to:

View all products
Add/ remove products to/ from cart
Add/ reduce quantity of products in cart
Checkout cart by submitting order
Enter order details

Admin is able to:

Create, edit and delete products
View and delete/ fulfil all user orders

## Models
- Item:
Stores individual products/items and their details
- Cart:
User can add items to the Cart
has_many :cart_items,
has_many :items, through: :cart_items
- CartItems:
User can add items to the Cart
belongs :cart
- Order:
User can place order
has_many order_items
- OrderItems:
It store order items and their quantity

## Ruby
ruby 2.5.9

## Rails
Rails 5.2.8.1

## Build
bundle install
rails db:create
bunlde exec rake db:migrate db:seed
## Docker
`docker-compose up --build`
