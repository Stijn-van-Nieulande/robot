require 'robot_arm'
robot_arm:load_level('exercise 9')
robot_arm.speed = 1

for i=1, 4 do
  for i=1, 4 do
    robot_arm:grab()
    for i=1, 4 do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for i=1, 4 do
      robot_arm:move_left()
    end
  end
  robot_arm:move_right()
end

for i=1, 3 do
  robot_arm:move_right()
end

robot_arm.speed = 0.9

for i=1, 4 do
  for j=1, 4 - (i - 1) do
    robot_arm:grab()
    for k=1, 3 + j do
      robot_arm:move_left()
    end
    robot_arm:drop()
    for k=1, 3 + j do
      robot_arm:move_right()
    end
  end
  robot_arm:move_left()
end