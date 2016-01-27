require "test_helper"

class NumberToWordTest

  describe "Number In Words" do
    it "should display numbers in words under 100" do
      NumberToWord.to_words(1).must_equal "one"
      NumberToWord.to_words(10).must_equal "ten"
      NumberToWord.to_words(50).must_equal "fifty"
      NumberToWord.to_words(77).must_equal "seventy seven"
      NumberToWord.to_words(99).must_equal "ninety nine"
    end

    it "should display numbers in words over 100 and under 1000" do
      NumberToWord.to_words(100).must_equal "one hundred"
      NumberToWord.to_words(222).must_equal "two hundred and twenty two"
      NumberToWord.to_words(350).must_equal "three hundred and fifty"
      NumberToWord.to_words(418).must_equal "four hundred and eighteen"
      NumberToWord.to_words(500).must_equal "five hundred"
      NumberToWord.to_words(605).must_equal "six hundred and five"
      NumberToWord.to_words(688).must_equal "six hundred and eighty eight"
      NumberToWord.to_words(744).must_equal "seven hundred and forty four"
      NumberToWord.to_words(891).must_equal "eight hundred and ninety one"
      NumberToWord.to_words(999).must_equal "nine hundred and ninety nine"
    end

    it "should not display numbers in words over 1000" do
      NumberToWord.to_words(1000).must_equal "one thousand"
      NumberToWord.to_words(1001).must_equal "one thousand and one"
      NumberToWord.to_words(1011).must_equal "one thousand and eleven"
      NumberToWord.to_words(1111).must_equal "one thousand one hundred and eleven"
      NumberToWord.to_words(1311).must_equal "one thousand three hundred and eleven"
      NumberToWord.to_words(2451).must_equal "two thousand four hundred and fifty one"
      NumberToWord.to_words(2771).must_equal "two thousand seven hundred and seventy one"
      NumberToWord.to_words(2891).must_equal "two thousand eight hundred and ninety one"
      NumberToWord.to_words(3812).must_equal "three thousand eight hundred and twelve"
      NumberToWord.to_words(3987).must_equal "three thousand nine hundred and eighty seven"
      NumberToWord.to_words(4573).must_equal "four thousand five hundred and seventy three"


      NumberToWord.to_words(22891).must_equal "twenty two thousand eight hundred and ninety one"
      NumberToWord.to_words(32581).must_equal "thirty two thousand five hundred and eighty one"
      NumberToWord.to_words(42385).must_equal "forty two thousand three hundred and eighty five"
      NumberToWord.to_words(56789).must_equal "fifty six thousand seven hundred and eighty nine"
      NumberToWord.to_words(78345).must_equal "seventy eight thousand three hundred and forty five"
      NumberToWord.to_words(91121).must_equal "ninety one thousand one hundred and twenty one"

      NumberToWord.to_words(100000).must_equal "one hundred thousand"
      NumberToWord.to_words(100204).must_equal "one hundred thousand two hundred and four"
      NumberToWord.to_words(208321).must_equal "two hundred and eight thousand three hundred and twenty one"
      NumberToWord.to_words(287254).must_equal "two hundred and eighty seven thousand two hundred and fifty four"
      NumberToWord.to_words(345678).must_equal "three hundred and forty five thousand six hundred and seventy eight"
      NumberToWord.to_words(487381).must_equal "four hundred and eighty seven thousand three hundred and eighty one"
      NumberToWord.to_words(831111).must_equal "eight hundred and thirty one thousand one hundred and eleven"
      NumberToWord.to_words(999999).must_equal "nine hundred and ninety nine thousand nine hundred and ninety nine"

      NumberToWord.to_words(1000000).must_equal "one million"
    end

    it "should raise an error" do
      exception = proc{ NumberToWord.to_words(0) }.must_raise(TypeError)
      exception.message.must_equal "Number out of scope" 

      exception = proc{ NumberToWord.to_words(1000001) }.must_raise(TypeError)
      exception.message.must_equal "Number out of scope" 

      exception = proc{ NumberToWord.to_words(-500) }.must_raise(TypeError)
      exception.message.must_equal "Number out of scope"
    end
  end

end
