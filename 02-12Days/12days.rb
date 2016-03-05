
class Xmas

  def self.gifts(gift_num)
    gifts = [
      "a partridge in a pear tree",
      "two turtle doves",
      "three french hens",
      "four calling birds",
      "FIVE GOLDEN RINGS",
      "six geese-a-laying",
      "seven swans-a-swimming",
      "eight maids-a-milking",
      "nine ladies dancing",
      "ten lords-a-leaping",
      "eleven pipers piping",
      "twelve drummers drumming"
    ]
    gift_num += 1
    gift_verses =[]

    gift_num.times do |i|
      gift_verses << gifts[i]
    end

    if gift_verses.length > 1
      gift_verses[0] = "and " + gift_verses[0]
    end

    return gift_verses.reverse

  end

  def self.verse(verse_num)
    days =[
      "first",
      "second",
      "third",
      "fourth",
      "fifth",
      "sixth",
      "seventh",
      "eighth",
      "ninth",
      "tenth",
      "eleventh",
      "twelfth"
    ]


    current_day = days[verse_num]

    first_line = "On the #{current_day} day of Christmas my true love gave to me\n"
    gift_line = self.gifts(verse_num).join("\n")
    return first_line + gift_line
    
  end

  def self.sing
    File.read('12days.txt').strip
  end

end
