require 'yaml'
require 'pry' 

def load_library(file)
  hash = YAML.load_file(file)
  emoticons = hash.transform_values { |x| 
    x = { :english => x[0], :japanese => x[1] }
    }
end
load_library('./lib/emoticons.yml')

def get_japanese_emoticon(file, j_emot)
  load_library(file).select { |(name, hash)|
    
  
end

def get_english_meaning
  # code goes here
end