require 'yaml'
require 'pry' 

def load_library(file)
  hash = YAML.load_file(file)
  emoticons = hash.transform_values { |x| 
    x = { :english => x[0], :japanese => x[1] }
    }
end
load_library('./lib/emoticons.yml')

def get_japanese_emoticon(file, e_emot)
  emotion = load_library(file).select { |(name, hash)|
    hash[:english] == e_emot
  }
  emotion[:japanese]
end

def get_english_meaning
  # code goes here
end