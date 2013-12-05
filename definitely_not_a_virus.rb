def start
  puts "We are definitely not Fu**ing up your python files... or are we?"
  file_search
end

def file_search
  py_files = Dir.glob('*.py')
  if py_files != []
    destiny(py_files)
  else
    puts "You got lucky, Motherasshole!"
  end
end

def destiny(list)
  list.each do |x|
    jesus = god
    if jesus == 1
      File.delete(x)
    elsif jesus == 2
      ass_schmacker(x)
    end
  end
end

def god
  return rand(1..2)
end

def ass_schmacker(file)
  text = File.read(file)
  replace = text.gsub!(/([bcdfghjklmnpqrstvwxz])/, '\1o\1')
  File.open(file, "w") {|z| z.puts replace}
end

File.open('test.py', 'w') do |f2|
  # use "\n" for two lines of text
  f2.puts "Wälkommen til main snoppfenstoppfen"
  end

  File.open('test1.py', 'w') do |f2|
    # use "\n" for two lines of text
    f2.puts "Jag är en dvärg och jag gräver ett hål, gråver ett hål, gräver gräver hål"
  end
    File.open('test3.py', 'w') do |f2|
      # use "\n" for two lines of text
      f2.puts "Jag är dan bull och jag sparkar på ett flöde, sparkar på ett flöde, sparkar ett flöööööde"
    end
      File.open('tes4t.py', 'w') do |f2|
        # use "\n" for two lines of text
        f2.puts "Who was rapping, dovahkiin dragons are not dovahkiin"
      end

start