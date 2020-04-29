require 'yaml'
require 'pry' 

def load_library(file)
  hash = YAML.load_file(file)
  emoticons = hash.transform_keys { |x| 
    x = { :english => x[0], :japanese => x[1] }
    }
    binding.pry 
end
load_library('./lib/emoticons.yml')

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end