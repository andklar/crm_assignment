def translate(words)
  words = words.split(' ')
  words.map { |input|
    case
    when input.start_with?('a', 'e', 'i', 'o', 'u')
      input = input + "ay"
    when input.start_with?('q')
      input = input.slice!(2..input.length)
      input = input + "quay"
    when input.slice(1..input.length).start_with?('a', 'e', 'i', 'o', 'u')
      input1 = input.split('')
      first_letter = input1.shift
      input = input.slice(1..input.length)
      input = input + first_letter + 'ay'
    when input.slice(1..input.length).start_with?('q')
      input = input.slice!(3..input.length)
      input = input + "squay"
    when input.slice(2..input.length).start_with?('a', 'e', 'i', 'o', 'u')
      input1 = input.split('')
      first_two_letters = input1.shift(2)
      input = input.slice!(2..input.length)
      input = input + first_two_letters.join('') + 'ay'
    when input.slice(3..input.length).start_with?('a', 'e', 'i', 'o', 'u')
      input1 = input.split('')
      first_three_letters = input1.shift(3)
      input = input.slice!(3..input.length)
      input = input + first_three_letters.join('') + 'ay'
    end
  }.join(' ')
end
