fridge_items_1 = ["milk", "eggs", "eggs","eggs", "eggs",
                  "eggs", "eggs", "avocado", "avocado", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla"]

# Looking at the collection above:

# 1. What is problematic about listing `fridge_items_1`
# as an array structured grocery list?
# It shows multiples of items instead of grouping them together with a value. Each item should
# be a key, with integers as the values indicating how many of each item there are

# 2. What might be a more readable way to structure this?

fridge_items_1 = {:milk => 1, :eggs => 6, :avocado => 2, :tortilla => 9}
p fridge_items_1