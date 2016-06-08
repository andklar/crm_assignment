def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input , num = 2)
  output = (input + " ") * num
  output.strip
end

def start_of_word(input, num = 1)
  input.slice(0..(num - 1))
end

def first_word(input)
  output = input.split(" ")
  output[0]
end

def titleize(input)
  output = input.split
  output2 = output.each { |x| x.capitalize! if x.length > 3 && x != "over"}.join(' ')
  output3 = output2.sub(output2[0], output2[0].upcase)
end

# input.split.map(&:capitalize).
