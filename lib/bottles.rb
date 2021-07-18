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
    if x == 0
      99
    else
      x - 1
    end
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
    if x == 0
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

# Stab 1
# class Bottles
#   def song
#     verses(99, 0)
#   end
#   
#   def verses(starting, ending)
#     (ending..starting).map { |x| verse(x) }.reverse.join("\n")
#   end
#   
#   def verse(x)
#     [
#       current_bottle_phrase(x),
#       next_bottle_phrase(x-1)
#     ].join("\n") + "\n"
#   end
#   
#   def current_bottle_phrase(x)
#     "#{bottle_desc(x).capitalize} of beer on the wall, #{bottle_desc(x)} of beer."
#   end
#   
#   def next_bottle_phrase(x)
#     return last_bottle_phrase if x == -1
#     "Take #{bottle_count(x)} down and pass it around, #{bottle_desc(x)} of beer on the wall."
#   end
#   
#   def last_bottle_phrase
#     "Go to the store and buy some more, 99 bottles of beer on the wall."
#   end
#   
#   def bottle_desc(x)
#     return "no more bottles" if x == 0
#     return "1 bottle" if x == 1
#     "#{x} bottles"
#   end
#   
#   def bottle_count(x)
#     x == 0 ? "it" : "one"
#   end
# end