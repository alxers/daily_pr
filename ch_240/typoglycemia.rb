#TODO: fix strange behaviour (place word f.e.)
# "Hello world place".split(' ').map { |word| arr = word.chars; f = arr.shift; l = arr.pop; p arr.shuffle.unshift(f).push(l).join  }.join(' ')
class Scrambler
  def initialize(input)
    @input_arr = input.split(' ')
  end

  def scramble
    @input_arr.map do |word|
      shuffle_chars(word)
    end.join(' ')
  end

  private
    def shuffle_chars(word)
      chars = word.chars
      first_letter = chars.shift
      last_letter = chars.pop
      chars.shuffle.unshift(first_letter).push(last_letter).join
    end
end

scrambler = Scrambler.new("According to a research team at Cambridge University,
                          it doesn't matter in what order the letters in a word are,
                          the only important thing is that the first and last letter be in the right place.
                          The rest can be a total mess and you can still read it without a problem.
                          This is because the human mind does not read every letter by itself, but the word as a whole.
                          Such a condition is appropriately called Typoglycemia.")

p scrambler.scramble
