# Shamelessly green
class Bottles
  def song
    verses(99, 0)
  end
  
  def verses(a, b)
    (b..a).map { |x| verse(x) }.reverse.join("\n")
  end
  
  def verse(x)
    case x
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" + 
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" + 
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{x} bottles of beer on the wall, #{x} bottles of beer.\n" + 
      "Take one down and pass it around, #{x - 1} #{container(x - 1)} of beer on the wall.\n"
    end
  end
  
  def container(x)
    if x == 1
      "bottle"
    else
      "bottles"
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