require 'robot_arm'
robot_arm:random_level(4)
robot_arm.speed = 0.9
robot_arm:wait(3)

row1 = 0; row2 = 0

i1 = 1;
while i1 > 0 do
  robot_arm:grab()
  if robot_arm:scan() ~= null then
    robot_arm:move_right()
    robot_arm:drop()
    robot_arm:move_left()
    row1 = row1 + 1
  else
    i1 = 0;
  end
end

for i=1, 3 do
  robot_arm:move_right()
end

i2 = 1;
while i2 > 0 do
  robot_arm:grab()
  if robot_arm:scan() ~= null then
    robot_arm:move_left()
    robot_arm:drop()
    robot_arm:move_right()
    row2 = row2 + 1
  else
    i2 = 0;
  end
end

robot_arm:move_left()
robot_arm:move_left()

while row1 > 0 do
  robot_arm:grab()
  robot_arm:move_right()
  robot_arm:move_right()
  robot_arm:drop()
  robot_arm:move_left()
  robot_arm:move_left()
  row1 = row1 - 1
end

robot_arm:move_right()

while row2 > 0 do
  robot_arm:grab()
  robot_arm:move_left()
  robot_arm:move_left()
  robot_arm:drop()
  robot_arm:move_right()
  robot_arm:move_right()
  row2 = row2 - 1
end