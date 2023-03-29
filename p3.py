import subprocess
import itertools
from gpiozero import LED, Button
from signal import pause

led = LED(5)
#takes button input
btn1 = Button(17, pull_up = True)
btn2 = Button(20)
btn3 = Button(19)
btn4 = Button(16)
btn5 = Button(4)

#generates a subprocess from the string button value and creates and output if led == 1
while True:
	output = subprocess.run(['./bb', str(btn1.value), str(btn2.value), str(btn3.value), str(btn4.value), str(btn5.value)])
	if output.returncode == 1:
		led.on()
	else:
		led.off()
pause()
