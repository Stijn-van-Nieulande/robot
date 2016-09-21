print ("Hallo, wat is je naam?\n")
naam = io.read()
print ("\nHallo, " .. naam, "\n", "\nDit is de tafel van 12:", "\n")
i = 0
while i <= 10 do
   print (i .. " x 12 = " .. i * 12)
   i = i + 1
end