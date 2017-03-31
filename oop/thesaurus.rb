# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
class Entry
  attr_accessor :word, :synonyms, :antonyms

  def initialize(input_options)
    @word = input_options[:word]
    @synonyms = input_options[:synonyms]
    @antonyms = input_options[:antonyms]
  end

  def add_synonym(synonym)
    synonyms << synonym
  end

  def add_antonym(antonym)
    antonyms << antonym
  end
end

class Thesaurus
  attr_accessor :entries

  def initialize(input_options)
    @entries = input_options[:entries]
  end

  def look_up_synonyms(word)
    entries.each do |entry|
      return entry.synonyms if entry.word == word
    end
    "word not in thesaurus"
  end

  def look_up_antonyms(word)
    entries.each do |entry|
      return entry.antonyms if entry.word == word
    end
    "word not in thesaurus"
  end
end

# Test Cases

# test Entry intialize
# first_entry = Entry.new({word: "happy", synonyms: ['sad', 'upset'], antonyms: ['excited', 'joyous']})
# second_entry = Entry.new({word: "sick", synonyms: ['healthy', 'well'], antonyms: ['diseased', 'unwell']})

# test Thesaurus intialize
# thesaurus1 = Thesaurus.new(entries: [first_entry, second_entry])

# test accessor methods
# p first_entry.word
# p second_entry.word
# p thesaurus1.entries

# test look up methods
# p thesaurus1.look_up_synonyms("happy")
# p thesaurus1.look_up_antonyms("sick")

# test add methods
# p first_entry.synonyms 
# first_entry.add_synonym("distraught")
# p first_entry.synonyms

# p first_entry.antonyms 
# first_entry.add_antonym("joy")
# p first_entry.antonyms


