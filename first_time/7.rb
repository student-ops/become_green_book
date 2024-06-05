h,w,x,y = gets.chomp.split(" ").map(&:to_i)
x -= 1
y -= 1

board = []
ans = 0


h.times do
  row = gets.chomp.chars()
  board.push(row)
end

h.times do |i|
  if x - i >=0 && board[x - i][y] != "#"
    ans += 1
  else
    break
  end
end

h.times do |i|
  if x + i < h && board[ x + i][y] != "#"
    ans += 1
  else
    break
  end
end

w.times do |i|
  if y - i >=0 && board[x][y -i ] != "#"
    ans += 1
  else
    break
  end
end

w.times do |i|
  # puts "i: #{i} \n x: #{x} \n y+i: #{y + i} \n"
  if y + i < w && board[x][ y + i] != "#"
    ans += 1
  else
    break
  end
end

puts ans - 3
# p board
# p board[x][y]
