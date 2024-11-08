print("Hello, World!!!")

chirp_frequencies = {
    329.63, 329.63, 349.23, 392.00, -- E E F G
    392.00, 349.23, 329.63, 293.66, -- G F E D
    261.63, 261.63, 293.66, 329.63, -- C C D E
    329.63, 293.66, 293.66,          -- E D D (pause)
    
    329.63, 329.63, 349.23, 392.00, -- E E F G
    392.00, 349.23, 329.63, 293.66, -- G F E D
    261.63, 261.63, 293.66, 329.63, -- C C D E
    293.66, 261.63, 261.63           -- D C C
}
for i = 1, #chirp_frequencies do
    MyGameEngine.sound(chirp_frequencies[i])
    MyGameEngine.delay(100)
end
MyGameEngine.sound(0)

print("Press any key to exit")
MyGameEngine.readkey()
