n = gets.to_i

hash_string = {}

n.times do
  key, value = gets.chomp.split(" ")
  hash_string[key] = value.to_i
end


sorted = hash_string.sort_by { |k, v| -v }
puts sorted[1][0]
