# PLACE: will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST. The origin (0,0) can be considered to be the SOUTH WEST most corner

# MOVE: will move the toy robot one unit forward in the direction it is currently facing.

# LEFT and RIGHT: will rotate the robot 90 degrees in the specified direction without changing the position of the robot.

# REPORT: will announce the X,Y and facing of the robot
def robot
  puts "Position X:"
  x = gets.chomp

  puts "Position Y:"
  y = gets.chomp

  puts "Facing position (WEST, NORTH, EAST, SOUTH):"
  face = gets.chomp

  def place(x,y,face)
    if [0,1,2,3,4].include?(x.to_i) && [0,1,2,3,4].include?(y.to_i) && ["WEST", "NORTH", "EAST", "SOUTH"].include?(face)

      print "PLACE #{x},#{y},#{face}"
    else
      puts "PLACE out of boundaries, try again!"
    end
  end

  puts place(x,y,face)

  def move(x,y,face)
    if place(x,y,face) == true && face == "WEST" && [0,1,2,3,4].include?(x)
      x = x + 1
      return x
    elsif place(x,y,face) == true && face == "EAST" && [0,1,2,3,4].include?(x) == true
      x = x - 1
      return x
    elsif place(x,y,face) == true && face == "NORTH" && [0,1,2,3,4].include?(y)
      y = y + 1
      return y
    elsif place(x, y, face) == true && face == "SOUTH" && [0,1,2,3,4].include?(y) == true
      y = y - 1
      return y
    else
      puts "Out of boundary"
    end
  end

  puts "What Do You Want to do: MOVE, LEFT, RIGHT or REPORT"
  input = gets.chomp

  if input == "MOVE"
    puts move(x,y,face)
    puts "PLACE: #{x}, #{y}, #{face}"
  end
end


puts robot












