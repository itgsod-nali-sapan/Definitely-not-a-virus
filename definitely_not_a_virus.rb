#Initializes the programme
def start
  puts "We are definitely not Fu**ing up your python files... or are we?"
  file_search
end

#Checks files >> list
def file_search
  #Checks the current folder for python files
  py_files = Dir.glob('*.py')
  #Checks if files exist, exists if not
  if py_files != []
    file_output(py_files)
  else
    puts "You got lucky, Motherasshole!"
  end
end

#Processes a list
#file_output(["file"])
#=> deletes file || sends file to translator
def file_output(list)
  #Iterate over a list and decides what do with it
  list.each do |x|
    #Decides the outcome for the current file
    number = rand_nr
      File.delete(x) if number == 1
      translator(x) if number == 2
  end
end

#Generates a number between 1-2
def rand_nr
  return rand(1..2)
end

#Translates file contents
#translator(file)
#file = "Hey there"
#=> file = "HoHey tothoherore"
def translator(file)
  #Opens the file
  text = File.read(file)
  #Check the content for any non vocals -> adds an o and the non vocal instead
  replace = text.gsub!(/([bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ])/, '\1o\1')
  #Replace the original content with translated content
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

#Function calls
start