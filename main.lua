print("Hello, World!!!\n")

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

    if i % 3 == 0 and i % 5 == 0 then
        print("FizzBuzz")
    elseif i % 3 == 0 then
        print("Fizz")
    elseif i % 5 == 0 then
        print("Buzz")
    else
        print(i)
    end
    
    for j = 1, 100 do
        MyGameEngine.putpixel(
            MyGameEngine.rand() % 320, -- X
            MyGameEngine.rand() % 200, -- Y 
            MyGameEngine.rand() % 256  -- COLOR
        )
    end
    MyGameEngine.delay(100)
end
MyGameEngine.sound(0)

print("Press any key to exit")
MyGameEngine.readkey()
