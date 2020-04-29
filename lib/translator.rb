require 'yaml'
require 'pry' 

def load_library(file)
  hash = YAML.load_file(file)
  emoticons = hash.transform_values { |x| 
    x = { :english => x[0], :japanese => x[1] }
    }
end

def get_japanese_emoticon(file, e_emot)
  emoticons = load_library(file)
  emotion = emoticons.select { |(name, hash)|
    
    emoticons[name][:english] == e_emot
  }
  emotion.values[0][:japanese]
end
get_japanese_emoticon('./lib/emoticons.yml', "O:)")

def get_english_meaning(file, j_emot)
  emoticons = load_library(file)
  emotion = emoticons.select { |(name, hash)|
    emoticons[name][:japanese] == j_emot
  }
  binding.pry
  emotion.to_a[0]
end
get_english_meaning('./lib/emoticons.yml', "(゜.゜)")


