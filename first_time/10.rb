n = gets.to_i
ans = Set.new

Math.sqrt(n).to_i.times do |i|
  i += 1
  if n % i == 0
    ans.add(i)
    ans.add(n / i)
  end
end

puts ans.to_a.sort
