n,k = gets.chomp.split(" ").map(&:to_i)

def gx n
  ary =n.abs.to_s.each_byte.map{|b| b - 0x30}

  tmp = ary.sort
  a = ary_num tmp
  b = ary_num tmp.reverse
  # n = tmp.sum
  # g2x(n,ary)
  return a - b
end

def ary_num ary
  len = ary.length
  ans = 0

  len.times do |i|
    ans += ary[i] * 10 ** i
  end
  return ans
end

k.times do
  n = gx(n)
end

puts n
