# TODO: refactor :)
def scramble(input)
  arr = []
  result = []
  input.split(' ').map do |word|
    arr = word.split('')
    first_letter = arr.shift
    last_letter = arr.pop
    if arr.length > 1
      result << (arr.shuffle.unshift(first_letter).push(last_letter).join)
    else
      result << arr.unshift(first_letter).push(last_letter).join
    end
  end
  result.join(' ')
end
