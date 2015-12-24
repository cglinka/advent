floor = 0

file = File.read("01.txt")

file.each_char do |c|
  if c == "("
    floor += 1
  elsif c == ")"
    floor -= 1
  end
end

puts floor
