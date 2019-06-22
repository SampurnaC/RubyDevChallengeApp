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
    end

  end

end

final_words = Dictionary.new().letter_combinations("2282668687")
