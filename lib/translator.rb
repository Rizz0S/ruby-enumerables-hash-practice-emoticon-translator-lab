# require modules here
require "yaml"

def load_library (file)
  YAML.load_file(file)
end

def get_japanese_emoticon (file, west_emo)
  emo_lib = load_library(file)

  japan_emo = emo_lib.find{|meaning, emoticons| emoticons[0] == west_emo}[meaning][1]
  puts japan_emo

end

def get_english_meaning (japan_emo)
  # code goes here
end

get_japanese_emoticon("./lib/emoticons.yml", ":)")
