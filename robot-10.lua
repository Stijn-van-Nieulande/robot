require 'robot_arm'
robot_arm:load_level('exercise 11')

for i=1, 9 do
  robot_arm:move_right()
end
for i=1, 10 do
  robot_arm:grab()
  if robot_arm:scan() == "white" then
    robot_arm:move_right()
    robot_arm:drop()
    robot_arm:move_left()
  else
    robot_arm:drop()
  end
  robot_arm:move_left()
end