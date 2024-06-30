# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
users = User.create([
  { email: 'andres@gmail.com', password: 'password123' },
  { email: 'maria@gmail.com', password: 'password123' },
  { email: 'juan@gmail.com', password: 'password123' }
])

restaurants = [
  { name: 'La Casa de Santiago', address: 'Calle Falsa 123, Santiago, Chile' },
  { name: 'Sabor de Siempre', address: 'Avenida Siempre Viva 456, Santiago, Chile' },
  { name: 'El Rincón de Ahumada', address: 'Paseo Ahumada 789, Santiago, Chile' }
]

restaurants.each do |restaurant_attrs|
  Restaurant.create(restaurant_attrs)
end
