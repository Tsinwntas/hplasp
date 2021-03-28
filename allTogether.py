import sys
import os
import op
import time


start_time = time.time()

def run():
	global done
	try:
		os.system('./plasp translate '+domain+ ' '+problem+' > translate.lp')
		os.system('clingo translate.lp strips-incremental.lp -t '+op.getOption("parallel") + " 1> log 2>&1")
	except:
		print('Strict call')

print("Getting main files..")
print("Getting domain file..")
domain = "domains/"+ op.getOptionOrDefault("domain", "domain.pddl")
print("Getting problem file..")
problem = "problems/"+op.getOptionOrDefault("problem", "problem.pddl")
print("Done.")

print("Running..")
run()
print("Done.")

print("--- %s seconds ---" % (time.time() - start_time))
