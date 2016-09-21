require 'robot_arm'
robot_arm:load_level('exercise 10')

j = 5
for i=1, 5 do
  robot_arm:grab()
  for i=1, (j + j) - 1 do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for i=1, (j + j) - 2 do
    robot_arm:move_left()
  end
  j = j - 1
end