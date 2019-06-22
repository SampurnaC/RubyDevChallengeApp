require 'pry'
require 'date'
require 'rails'
class Dictionary

  def letter_combinations(digits)
    time_start = Time.now()
    return [] if digits.nil? || digits.length != 10 || digits.split('').select{|a|(a.to_i == 0 || a.to_i == 1)}.length > 0
    letters = {"2" => ["a", "b", "c"],"3" => ["d", "e", "f"],"4" => ["g", "h", "i"],"5" => ["j", "k", "l"],"6" => ["m", "n", "o"],"7" => ["p", "q", "r", "s"],"8" => ["t", "u", "v"],"9" => ["w", "x", "y", "z"]}

    dictionary = {}
    for i in (1..30)
      dictionary[i] = []
    end

    file_name = "dictionary.txt"
    File.foreach( file_name ) do |word|
      dictionary[word.length] << word.chop.to_s.downcase
    end

    keys = digits.chars.map{|digit|letters[digit]}
    results = {}
    results2 = {}
    total_number = keys.length - 1
    for i in (2..total_number - 2)

      first_array = keys[0..i]
      next if first_array.length < 3
      second_array = keys[i + 1..total_number]
      next if second_array.length < 3
      first_combination = first_array.shift.product(*first_array).map(&:join)
      next if first_combination.nil?
      second_combination = second_array.shift.product(*second_array).map(&:join)
      next if second_combination.nil?
      results[i] = [(first_combination & dictionary[i+2]), (second_combination & dictionary[total_number - i +1])]
    end
    for i in (0..3)
      b = [3, 3, 3]
      b[i] = 4
      first_array = keys[0..b[0]-1]
      second_array = keys[b[0]..b[0]+b[1]-1]
      third_array = keys[b[0]+b[1]..b[0]+b[1]+b[2]-1]
      first_combination = first_array.shift.product(*first_array).map(&:join) # Get product of arrays #get_combination(first_array, dictionary)#
      second_combination = second_array.shift.product(*second_array).map(&:join) # Get product of arrays #get_combination(first_array, dictionary)#
      third_combination = third_array.shift.product(*third_array).map(&:join) # Get product of arrays #get_combination(first_array, dictionary)#
      results2[i] = [(first_combination & dictionary[b[0]+1]), (second_combination & dictionary[b[1]+1]), (third_combination & dictionary[b[2]+1])] # get common values from arrays
    end

  end

end

final_words = Dictionary.new().letter_combinations("2282668687")
