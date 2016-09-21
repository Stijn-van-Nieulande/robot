require 'robot_arm'
robot_arm:load_level('exercise 6')

for j=1, 4 do
  robot_arm:move_right()
end

i = 1; b = 0
while i > 0 do
  robot_arm:grab()
  if robot_arm:scan() ~= null then
    if robot_arm:scan() == "green" then
      b = 1
    elseif robot_arm:scan() == "blue" then
      b = 4
    elseif robot_arm:scan() == "red" then
      b = 6
    elseif robot_arm:scan() == "white" then
      b = 5
    end
    
    for j=1, b do
      robot_arm:move_left()
    end
    robot_arm:drop()
    for j=1, b + 1 do
      robot_arm:move_right()
    end
    
    i = i + 2; b = 0
  else
    i = 0
  end
end