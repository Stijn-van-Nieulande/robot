require 'robot_arm'
robot_arm:load_level('exercise 11')

for i=1, 9 do
  robot_arm:grab()
  if robot_arm:scan() == "red" then
    for j=1, (10 - i) do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for j=1, (10 - i) - 1 do
      robot_arm:move_left()
    end
  else
    robot_arm:drop()
    robot_arm:move_right()
  end
end