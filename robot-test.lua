require 'robot_arm'
robot_arm:load_level('exercise 9')

frame = robot_arm:get_frame()
frame:Connect(wx.wxID_ANY, wx.wxEVT_CHAR,
function(event)
  if event.KeyCode == 316 then
    robot_arm:move_right()
  end
  print(event.KeyCode, "316", type(event.KeyCode))
end)