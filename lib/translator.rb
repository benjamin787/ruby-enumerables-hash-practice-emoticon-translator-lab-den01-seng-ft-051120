require 'yaml'
require 'pry' 

def load_library(file)
  hash = YAML.load_file(file)
  emoticons = hash.transform_values { |x| 
    x = { :english => x[0], :japanese => x[1] }
    }
end

def get_japanese_emoticon(file, e_emot)
  emotion = load_library(file).select { |(name, hash)|
    hash[:english] == e_emot
  }
  emotion[:japanese]
  binding.pry
end
get_japanese_emoticon('./lib/emoticons.yml', "O:)")

def get_english_meaning
  # code goes here
end