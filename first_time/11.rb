n,k = gets.split.map(&:to_i)
ary = Array.new(n,[0,0])

n.times do |i|
  a,b = gets.split.map(&:to_i)
  ary[i] = [a,b]
end
# Ai Bi
# fllow

tmp = 0

ary.sort_by!{|a,b| a}

n.times do |i|
  if ary[i][0] <= tmp + k
    # p "ok tomo"
    untin = ary[i][0] - tmp
    tmp = ary[i][0]
    k -= untin
    # puts "tmp: #{tmp} , k: #{k}, untin: #{untin}"
    k += ary[i][1]
  else
    break
  end
  # puts "tmp: #{tmp} , k: #{k}"
end

tmp += k
# while k >= 0
#   k.pred
#   tmp.next
# end

p tmp
