paper_order = 0

file = File.read("02.txt")

paper = 0
ribbon = 0
file.each_line.with_index do |line, index|
    # print line
    l = line.rstrip.split("x").map(&:to_i)
    l.sort!
    paper += (l[0]*l[1]*2) + (l[0]*l[2]*2 + l[1]*l[2]*2) + l[0]*l[1]
    ribbon += l[0]*2 + l[1]*2 + l[0]*l[1]*l[2]
end
puts "paper: #{paper}"
puts "ribbon: #{ribbon}"