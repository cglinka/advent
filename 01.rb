floor = 0

file = File.read("01.txt")

file.each_char.with_index do |c, index|
  if c == "("
    floor += 1
  elsif c == ")"
    floor -= 1
  end

  if floor == -1
    # Should be 1783
    puts "Enter basement at #{index + 1}"
  end
end

# Should be 232
puts "Final floor position: #{floor}"
