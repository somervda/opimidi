import OPi.GPIO as GPIO
import time
channel="PA01"
GPIO.setmode(GPIO.SUNXI)
print(GPIO.getmode())
GPIO.setup(channel,GPIO.OUT,GPIO.LOW)
for x in range(10):
    print("Low")
    GPIO.output(channel,GPIO.LOW)
    time.sleep(.2)
    print("High")
    GPIO.output(channel,GPIO.HIGH)
    time.sleep(.2)
print("Low")
GPIO.output(channel,GPIO.LOW)