option = 1
   def approved(a)
        file = File.open('average.csv', 'r')
        data = file.readlines
        file.close
        i = 1
        data[i].each do |student|
        print data = student.split(' ').map{|e| e.chomp}.to_i
        print data if data.last >= 5.0
        i +=1
      end
    end
while option < 4 && option >= 0
  puts
  puts 'Welcome, choose an option'
  puts 'Option 1 : Average of notes'
  puts 'Option 2: Total absences'
  puts 'Option 3 : Approved students'
  puts 'Option 4 : log off'
  option = gets.chomp.to_i

 
  if option <= 4 && option >= 0
    case option

    when 1
      file = File.open('course.csv', 'r')
      data = file.readlines
      file.close

      prom = 0
      i = 0
      large = 0
      sum = 0
      
    #  while i < data.length do
      data.each_slice(6) do |slices|

        data = data.map { |o| o.chomp.split(', ') }
        print data
        slices.each do |er|
          
         
        end
        print sum = slices.inject(0){ |acc, el| acc + el[i].to_i }
        i += 1
      #end
        
        large = data[0].length - 1
        puts prom = sum / large.to_f
        j = 0

        file = File.open('averagedd.csv', 'w')
        while j < data.length do
          file.puts("la suma es #{sum} y el largoo es #{large}")
          file.puts("los datos #{data[0][j]} #{prom}")
          file.puts
          j += 1
        end
         
          file1.close
      end

    when 2
      file = File.open('course.csv', 'r')
      data = file.readlines
      file.close

      data.each_slice(6) do |slices|

        data = data.map { |o| o.chomp.split(', ') }
        d = data.map { |ap| ap.count('A') }


        print d
      end

    when 3
     
      approved(5.0)
      end
  end
end

