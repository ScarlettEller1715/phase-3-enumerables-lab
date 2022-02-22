require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.collect do |f|
    f[:name]
  end
end

def spiciest_foods(spicy_foods)
  spicy_foods.select do |f|
    f[:heat_level] > 5
  end
end


def print_spicy_foods(spicy_foods)
  spicy_foods.collect do |f|
    puts "#{f[:name]} (#{f[:cuisine]}) | Heat Level: #{"🌶" * f[:heat_level]}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |f|
    f[:cuisine] == cuisine
  end
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort do |f1, f2|
    f1[:heat_level] <=> f2[:heat_level]
  end
end

def print_spiciest_foods(spicy_foods)
  filtered_foods = spicy_foods.select do |f|
    f[:heat_level] > 5
  end

  printed_foods = filtered_foods.collect do |f|
  puts "#{f[:name]} (#{f[:cuisine]}) | Heat Level: #{"🌶" * f[:heat_level]}"
  end
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array


def average_heat_level(spicy_foods)
  spicy_total = spicy_foods.sum do |f|
    f[:heat_level]
  end

  average_total = spicy_total / spicy_foods.length
end
