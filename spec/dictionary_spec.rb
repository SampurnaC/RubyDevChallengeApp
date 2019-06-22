require "dictionary"
describe Dictionary do
  describe "Number to convert into words: 7463981023" do
    it "Should raise an exception as number contains 0 and 1 digits" do
      expect(Dictionary.new.letter_combinations("7463981023")).to match_array([])
    end
  end

  describe "Number to convert into words: 6686787825" do
    it "Should search all key combinations against dictionary and get matching words. Min word length is 3" do
      expect(Dictionary.new.letter_combinations("6686787825"))
                          .to eq([["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["noun", "pup", "taj"], ["noun", "pur", "taj"], ["noun", "pus", "taj"], ["noun", "sup", "taj"], ["noun", "suq", "taj"], ["onto", "pup", "taj"], ["onto", "pur", "taj"], ["onto", "pus", "taj"], ["onto", "sup", "taj"], ["onto", "suq", "taj"], ["mot", "opts", "taj"], ["mot", "opus", "taj"], ["mot", "orts", "taj"], ["not", "opts", "taj"], ["not", "opus", "taj"], ["not", "orts", "taj"], ["oot", "opts", "taj"], ["oot", "opus", "taj"], ["oot", "orts", "taj"], ["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "ort", "puck"], ["mot", "ort", "ruck"], ["mot", "ort", "suck"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], ["mot", "opt", "pub"], ["mot", "opt", "qua"], ["mot", "opt", "rub"], ["mot", "opt", "sub"], ["mot", "ort", "pub"], ["mot", "ort", "qua"], ["mot", "ort", "rub"], ["mot", "ort", "sub"], ["not", "opt", "pub"], ["not", "opt", "qua"], ["not", "opt", "rub"], ["not", "opt", "sub"], ["not", "ort", "pub"], ["not", "ort", "qua"], ["not", "ort", "rub"], ["not", "ort", "sub"], ["oot", "opt", "pub"], ["oot", "opt", "qua"], ["oot", "opt", "rub"], ["oot", "opt", "sub"], ["oot", "ort", "pub"], ["oot", "ort", "qua"], ["oot", "ort", "rub"], ["oot", "ort", "sub"], "motortruck"])
    end
  end

  describe "Number to convert into words: 2282668687" do
    it "Should search all key combinations against dictionary and get matching words. Min word length is 3" do
      expect(Dictionary.new.letter_combinations("2282668687"))
                          .to eq([["act", "amounts"], ["act", "contour"], ["bat", "amounts"], ["bat", "contour"], ["cat", "amounts"], ["cat", "contour"], ["acta", "mounts"], ["acta", "mot", "mus"], ["acta", "mot", "nus"], ["acta", "mot", "our"], ["acta", "not", "mus"], ["acta", "not", "nus"], ["acta", "not", "our"], ["acta", "oot", "mus"], ["acta", "oot", "nus"], ["acta", "oot", "our"], ["act", "boot", "mus"], ["act", "boot", "nus"], ["act", "boot", "our"], ["act", "coot", "mus"], ["act", "coot", "nus"], ["act", "coot", "our"], ["bat", "boot", "mus"], ["bat", "boot", "nus"], ["bat", "boot", "our"], ["bat", "coot", "mus"], ["bat", "coot", "nus"], ["bat", "coot", "our"], ["cat", "boot", "mus"], ["cat", "boot", "nus"], ["cat", "boot", "our"], ["cat", "coot", "mus"], ["cat", "coot", "nus"], ["cat", "coot", "our"], ["act", "boo", "tots"], ["act", "boo", "tour"], ["act", "con", "tots"], ["act", "con", "tour"], ["act", "coo", "tots"], ["act", "coo", "tour"], ["bat", "boo", "tots"], ["bat", "boo", "tour"], ["bat", "con", "tots"], ["bat", "con", "tour"], ["bat", "coo", "tots"], ["bat", "coo", "tour"], ["cat", "boo", "tots"], ["cat", "boo", "tour"], ["cat", "con", "tots"], ["cat", "con", "tour"], ["cat", "coo", "tots"], ["cat", "coo", "tour"], ["act", "boo", "tot"], ["act", "con", "tot"], ["act", "coo", "tot"], ["bat", "boo", "tot"], ["bat", "con", "tot"], ["bat", "coo", "tot"], ["cat", "boo", "tot"], ["cat", "con", "tot"], ["cat", "coo", "tot"], "catamounts"])
    end
  end
end
