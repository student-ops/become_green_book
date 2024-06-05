n = gets.to_i

cnt = 0
n.times do |i|
  (i+1 ).to_s.include?("7") || (i+1).to_s(8).include?("7") ? cnt += 1 : cnt +=0
end

puts n - cnt
