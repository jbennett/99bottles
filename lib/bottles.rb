# Shamelessly green
class Bottles
  def song
    verses(99, 0)
  end

  def verses(a, b)
    (b..a).map { |x| verse(x) }.reverse.join("\n")
  end

  def verse(x)
    "#{quantity(x).capitalize} #{container(x)} of beer on the wall, #{quantity(x)} #{container(x)} of beer.\n" +
    "#{action(x)}, #{quantity(successor(x))} #{container(successor(x))} of beer on the wall.\n"
  end

  def successor(x)
    BottleNumber.new(x).successor
  end

  def action(x)
    BottleNumber.new(x).action
  end


  def quantity(x)
    BottleNumber.new(x).quantity
  end

  def container(x)
    BottleNumber.new(x).container
  end

  def pronoun(x)
    BottleNumber.new(x).pronoun
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
  end

  def action
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def quantity
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end
end
