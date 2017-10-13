import jetsonGPIO
import time
print ("blah")

outpin = 388
jetsonGPIO.gpioExport(outpin)
jetsonGPIO.gpioSetDirection(outpin, 1)

for i in range (1,100):
    print("on")
    jetsonGPIO.gpioSetValue(outpin, 1)
    time.sleep(1)
    print("off")
    jetsonGPIO.gpioSetValue(outpin, 0)
    time.sleep(1)
