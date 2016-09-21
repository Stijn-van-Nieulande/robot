require 'robot_arm'
robot_arm:load_level('exercise 1')

robot_arm:move_right()
robot_arm:grab()
robot_arm:move_left()
robot_arm:drop()