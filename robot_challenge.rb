
def robot
  puts "--------------------"
  puts "------WELCOME-------"
  puts "-------TO-THE-------"
  puts "---ROBOT-CHALLENGE--"
  puts "--------------------"

  # user X, Y and FACE inputs
  puts "Input X position:"
  x = gets.chomp.to_i

  puts "Input Y position:"
  y = gets.chomp.to_i

  puts "Input F position (WEST, NORTH, EAST, SOUTH):"
  f = gets.chomp

  # making sure the input is valid
  if [0,1,2,3,4].include?(x) && [0,1,2,3,4].include?(y) && ["WEST", "NORTH", "EAST", "SOUTH"].include?(f)
    puts "PLACE #{x},#{y},#{f}"
  else
    puts "Incorrect PLACE, try again!"
    puts robot
  end

  puts ""
  puts "Next command: MOVE, LEFT, RIGHT, REPORT, PLACE or QUIT GAME"
  puts ""
  # ROBOT actions
  user_input = nil
  until user_input == "QUIT GAME"
    user_input = gets.chomp
    # execute command if X and Y are on the table
    if [0,1,2,3,4].include?(x) == true && [0,1,2,3,4].include?(y) == true
      case user_input
      when "MOVE"
        case
        when f == "WEST"
          x = x-1
        when f == "EAST"
          x = x+1
        when f == "NORTH"
          y = y+1
        when f == "SOUTH"
          y = y-1
        else
          puts "Out of Boundary"
        end
      when "LEFT"
        array = ["WEST", "NORTH", "EAST", "SOUTH"]
        case
        when f == "WEST"
          counter = 0
          f = array[counter - 1]
        when  f == "NORTH"
          counter = 1
          f = array[counter - 1]
        when f == "EAST"
          counter = 2
          f = array[counter - 1]
        when f == "SOUTH"
          counter = 3
          f = array[counter - 1]
        else
        end
      when "RIGHT"
        array = ["WEST", "SOUTH", "EAST", "NORTH"]
        case
        when f == "WEST"
          counter = 0
          f = array[counter - 1]
        when  f == "SOUTH"
          counter = 1
          f  = array[counter - 1]
        when f == "EAST"
          counter = 2
          f = array[counter - 1]
        when f == "NORTH"
          counter = 3
          f = array[counter - 1]
        else
        end
      when "REPORT"
        puts ""
        puts ""
        puts "Output: #{x},#{y},#{f}"
      when "QUIT GAME"
        puts "good bye!"
      when "PLACE"
        puts robot
      else
        puts "try again!"
      end
    else
      case user_input
      when "QUIT GAME"
        puts "good bye!"
      when "PLACE"
        puts robot
      else
        puts "command ignored"
      end
    end
  end
end

puts robot

