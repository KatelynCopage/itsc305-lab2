import itertools
import subprocess
from itertools import product

# First compile c program
#bin_file = "bb1"
#subprocess.run(["gcc", "-o", bin_file, "./bb1.c"])

#Making a table layout for the c program
table = list(itertools.product([0,1], repeat = 5))

# Pass arguments to the c program using subprocess
for num in range(len(table)):
	output=subprocess.call(['./bb', str(table[num][0]), str(table[num][1]), str(table[num][2]), str(table[num][3]), str(table[num][4])])

	print(str(table[num][0]), str(table[num][1]), str(table[num][2]), str(table[num][3]), str(table[num][4]), output)
