lighton=0
pinLED1=4
pinLED2=0
gpio.mode(pinLED1, gpio.OUTPUT)
gpio.mode(pinLED2, gpio.OUTPUT)
mytimer = tmr.create()
mytimer:register(2000, 1, function()
print("Blink LED1 and LED2 consecutively")
if lighton==0 then 
    lighton=1
    gpio.write(pinLED1, gpio.LOW)
    gpio.write(pinLED2, gpio.HIGH)
else 
    lighton=0 
    gpio.write(pinLED1, gpio.HIGH)
    gpio.write(pinLED2, gpio.LOW)
end 
end)
mytimer:start()
