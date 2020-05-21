def is_haiku?(text)
  counts = syllabes_sentences(text)
  counts[0] == 5 && counts[1] == 7 && counts[2] == 5
end
def syllabes_sentences(text)
  text.lines.map(&:chomp).inject([]) do |syllabes, string |
    syllabes << string.split(" ").inject(0) {|sum,word| sum + new_count(word) }
  end
end
def new_count(word)
  word.downcase!
  return 1 if word.length <= 3
  word.sub!(/(?:[^laeiouy]es|ed|[^laeiouy]e)$/, '')
  word.sub!(/^y/, '')
  word.scan(/[aeiouy]{1,2}/).size
end
p is_haiku?("An old silent pond...
A frog jumps into the pond,
splash! Silence again.")