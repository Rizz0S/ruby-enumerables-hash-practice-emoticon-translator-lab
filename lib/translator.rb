# require modules here
require "yaml"

def load_library (file)
  file = YAML.load_file(file)
  puts file
  file
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
