# require modules here
require "yaml"

def load_library (file)
  YAML.load_file(file)
end

def get_japanese_emoticon (file, west_emo)
  emo_lib = load_library(file)

  japan_emo = emo_lib.each_value {|value|}

end

def get_english_meaning (japan_emo)
  # code goes here
end
