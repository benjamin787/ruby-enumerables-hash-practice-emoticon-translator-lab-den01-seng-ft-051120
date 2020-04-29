require 'yaml'
require 'pry' 

def load_library
  hash = YAML.load_file('emoticons.yml')
  emoticons = hash.transform_keys { |x| 
    x = { :english => x[0], :japanese => x[1]
    }
end
load_library
binding.pry 

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end