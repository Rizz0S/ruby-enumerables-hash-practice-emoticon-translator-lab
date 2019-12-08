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

  if !(emo_lib[:get_emoticon].collect{|west, japan| west}.include?(west_emo))
    return "Sorry, that emoticon was not found"
  end

  emo = emo_lib[:get_emoticon].find{|west, japan| west == west_emo}
  japan_emo = emo[1]
  japan_emo
end

def get_english_meaning (file, japan_emo)
  emo_lib = load_library(file)

  if !(emo_lib[:get_meaning].collect{japan, west| japan}.include?(japan_emo))
    return "Sorry, that emoticon was not found"
  end

  emo = emo_lib[:get_meaning].find{|japan, west| japan == japan_emo}
  west_meaning = emo[1]
  west_meaning

end

#get_japanese_emoticon("./lib/emoticons.yml", "1231231")
