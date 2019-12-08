# require modules here
require "yaml"
require "pp"

def load_library (file)
  emo_lib = YAML.load_file(file)
  h =  {
    get_meaning: {},
    get_emoticon:  {}
  }

  emo_lib.each do |meaning, emoticons|
    h[:get_meaning][emoticons[1]] = meaning
    h[:get_emoticon][emoticons[0]] = emoticons[1]
  end
  h
end

def get_japanese_emoticon (file, west_emo)
  emo_lib = load_library(file)



  emo = emo_lib[:get_emoticon].find{|west, japan| west == west_emo}
  puts emo
  if !emo
    return "Sorry, that emoticon was not found"
  else
    japan_emo = emo[1]
  end
  puts japan_emo
end

def get_english_meaning (japan_emo)
  # code goes here
end

get_japanese_emoticon("./lib/emoticons.yml", "2131231")
