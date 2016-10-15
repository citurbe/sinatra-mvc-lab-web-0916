class PigLatinizer




  def to_pig_latin(input_text)
    word_array = input_text.split(" ")
    latin_array = word_array.map do |word|
      self.piglatinize(word)
    end
    @pig_latin = latin_array.join(" ")
  end


def piglatinize(word)
  return "#{word}way" if word.downcase.chars[0].match(/[aeiou]/)

  word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
end

end
