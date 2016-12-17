
# Function will create ordinalzed suffixes for corresponding integers.
def ordinal(number)
  abs_number = number.to_i.abs

  if (11..13).include?(abs_number % 100)
    "th"
  else
    case abs_number % 10
      when 1; "st"
      when 2; "nd"
      when 3; "rd"
      else    "th"
    end
  end
end
# Attaches the ordinalized suffixes to the day they occured
def ordinalize(number)
  "#{number}#{ordinal(number)}"
end
=begin
    Program allows you to submit an array
    as an arguement and will return the greatest
    gain as well as the days over which the gain occured
=end
def greatest_profit(array)
    array_index = 0
    pivot = array_index + 1
    greatest = 0
    p1 = 0
    p2 = 0

    while array_index <= array.length - 2
        while pivot <= array.length - 1
=begin
Checks if the sum of pivot - array_index
is greater than the current largest stored sum
=end
            if array[pivot] - array[array_index] > greatest
                greatest = array[pivot] - array[array_index]
                p1 = array_index
                p2 = pivot
            end
            # Increases pivot count by 1
            pivot += 1
        end
        #Increases array index count by 1 and updates the pivot count
        array_index += 1
        pivot = array_index + 1
    end
    puts "You have made a maximum profit of $#{greatest} between the #{ordinalize(p1)} and #{ordinalize(p2)} day"
end

stock_prices_yesterday = ["Store your values here in the format of an array"]
puts greatest_profit(stock_prices_yesterday)