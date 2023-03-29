import subprocess
import itertools
from time import sleep
from gpiozero import LED, Button
from signal import pause

#gathers the output of the other program
output1 = LED(5)
output2 = LED(6)
output3 = LED(13)
output4 = LED(19)
output5 = LED(26)

#button input
input = Button(21, pull_up = False)
#makes table
table = list(itertools.product([0,1], repeat = 5))

# Pass arguments to the c program using subprocess
for num in range(len(table)):

	output1.value = table[num][0]
	output2.value = table[num][1]
	output3.value = table[num][2]
	output4.value = table[num][3]
	output5.value = table[num][4]

	sleep(0.3)
#prints values
	print(str(table[num][0]), str(table[num][1]), str(table[num][2]), str(table[num][3]), str(table[num][4]), input.value)



