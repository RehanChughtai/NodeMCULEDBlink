lighton=0
pinLED1=4
gpio.mode(pinLED1, gpio.OUTPUT)
mytimer = tmr.create()
mytimer:register(2000, 1, function() 
print("Blink LED1")
if lighton==0 then 
    lighton=1
    gpio.write(pinLED1, gpio.LOW)
else 
    lighton=0 
    gpio.write(pinLED1, gpio.HIGH)
end 
end)
mytimer:start()
