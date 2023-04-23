categories = %w[
  Groceries
  Electronics
  Clothing
]

categories.each do |category|
  cat = Category.create(name: category)

  cat.products.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    url: Faker::Internet.url,
    purchased: [ true, false ].sample
  )
end
