suitcase = {
  "socks" => 4,
  "pants" => 1,
}

# 1. Add a key/value pair of shirts/3 to the suitcase.
# 2. Increase the value of shirts by 1.
# 3. Add a key/value pair of swimsuit/true to the suitcase.

suitcase[:shirts] = 3
p suitcase

suitcase[:shirts] += 1
p suitcase

suitcase[:swimsuit] = true
p suitcase