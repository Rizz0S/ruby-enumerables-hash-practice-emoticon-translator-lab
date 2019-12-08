# require modules here
require "yaml"

def load_library (file)
  emo_lib = YAML.load_file(file)
  h =  {
    :'get_meaning' => {}
    :'get_emoticon' =>  {}
  }

  emo_lib.each do |meaning, emoticons|
    h[:'get_meaning'][emoticons][1] = meaning
    h[:'get_emoticon'][emoticons][0] = emoticons[1]
  end


end

def get_japanese_emoticon (file, west_emo)
  emo_lib = load_library(file)

  japan_emo = emo_lib.find{|meaning, emoticons| emoticons[0] == west_emo}.last[1]

end

def get_english_meaning (japan_emo)
  # code goes here
end

get_japanese_emoticon("./lib/emoticons.yml", ":)")
