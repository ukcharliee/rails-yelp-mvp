puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: 9999,
    category:      "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: 8888,
    category:        "italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: 7777,
    category:     "indian"
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
