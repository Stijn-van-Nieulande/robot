require 'robot_arm'
robot_arm:random_level(1)

i = 1
while i > 0 do
  robot_arm:grab()
  if robot_arm:scan() ~= null then
    for j=1, i do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for j=1, i do
      robot_arm:move_left()
    end
    i = i + 1
  else
    i = 0
  end
end