require 'robot_arm'
robot_arm:load_level('exercise 11')

red = "red"; green = "green"; blue = "blue"; white = "white"
t = {red = 0, green = 0, blue = 0, white = 0}

for j=1, 10 do
  robot_arm:grab()
  for k, v in pairs(t) do
    if robot_arm:scan() == k then
      t[k] = t[k] + 1
    end
  end
  robot_arm:drop();
  robot_arm:move_right()
end

key = next(t); max = t[key]

for k, v in pairs(t) do
  if t[k] > max then
    key, max = k, v
  end
end

for i=1, 9 do
  robot_arm:grab()
  if robot_arm:scan() == key then
    for j=1, (10 - i) do
      robot_arm:move_left()
    end
    robot_arm:drop()
    for j=1, (10 - i) -1 do
      robot_arm:move_right()
    end
  else
    robot_arm:drop()
    robot_arm:move_left()
  end
end