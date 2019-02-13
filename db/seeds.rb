puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      'rue du chien chaud , 75000 Paris',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      'rue de la tour, 23 Pise',
    category:  'italian'
  },
  {
    name:         'Chez toto',
    address:      'rue maneneken pis, Bruxelles',
    category:  'belgian'
  },
  {
    name:         'le 4eme mur',
    address:      'avenue de l\'opera, 33000 Bordeaux',
    category:  'french'
  },
    {
    name:         'wasabi',
    address:      'rue d\'anvers, 69007 Lyon',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
