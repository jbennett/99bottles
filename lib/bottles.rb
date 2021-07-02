class Bottles
  def song
    verses(99, 0)
  end
  
  def verses(starting, ending)
    (ending..starting).map { |x| verse(x) }.reverse.join("\n")
  end
  
  def verse(x)
    [
      current_bottle_phrase(x),
      next_bottle_phrase(x-1)
    ].join("\n") + "\n"
  end
  
  def current_bottle_phrase(x)
    "#{bottle_desc(x).capitalize} of beer on the wall, #{bottle_desc(x)} of beer."
  end
  
  def next_bottle_phrase(x)
    return last_bottle_phrase if x == -1
    "Take #{bottle_count(x)} down and pass it around, #{bottle_desc(x)} of beer on the wall."
  end
  
  def last_bottle_phrase
    "Go to the store and buy some more, 99 bottles of beer on the wall."
  end
  
  def bottle_desc(x)
    return "no more bottles" if x == 0
    return "1 bottle" if x == 1
    "#{x} bottles"
  end
  
  def bottle_count(x)
    x == 0 ? "it" : "one"
  end
end