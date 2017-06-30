file = File.open('course.csv', 'r')
      data = file.readlines
      file.close
      data = data.map { |o| o.chomp.split(', ') }
print data[0]
note = []
n = data.length
j = 0
for j in 0..n
  data[j].each_with_index do |e, i|
note[i] = e.to_i

end
j += 1
end

print note
      prom = 0
      i = 0
      large = 0
      sum = 0

      