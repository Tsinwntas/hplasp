import sys
import os
import time
import multiprocessing 
import op
import fw
import utils

start_time = time.time()

def runNoStrict():
	t1 = multiprocessing.Process(target=utils.loading, args=("Trying non strict run",)) 
	t1.start()
	try:
		os.system('./plasp translate '+domain+ ' '+problem+' > translate.lp')
		os.system('clingo translate.lp incmode-py-mine4.lp -c _parallel=1 -c c1=0 -t '+op.getOption("parallel")+' 1> log 2>&1')
		utils.updateProblem()
	except Exception as err:
		print(err)
	utils.loaded(t1)

def runStrict(steps):
	try:
		os.system('./plasp translate '+domain+ ' updated_problem.pddl > translate.lp')
		os.system('clingo translate.lp incmode-py-mine4.lp -c _parallel=1 -c c1='+steps+' -t '+op.getOption("parallel")+' 1> log 2>&1')
		utils.updateProblem()
	except Exception as err:
		print(err)

def runStrictLoop():
	global iterations
	t2 = multiprocessing.Process(target=utils.loading, args=("While problem isn't solved trying strict runs",))
	t2.start()
	currIteration = 0;
	steps = op.getOption("steps");
	while not utils.getDone() and (iterations == 0 or currIteration < iterations):
		currIteration+=1
		utils.setExtra(" (iteration:{} / steps:{})".format(currIteration,steps))
		runStrict(steps)
	utils.loaded(t2)

print("Getting main files..")
print("Getting domain file..")
domain = "domains/"+sys.argv[1] if len(sys.argv) > 1 else "domains/domain.pddl"
print("Getting problem file..")
problem = "problems/"+sys.argv[2] if len(sys.argv) > 2 else "problems/problem.pddl"
print("Done.")

iterations = int(sys.argv[3]) if len(sys.argv) > 3 else 0;

utils.split(problem)

runNoStrict()
runStrictLoop()

print("--- %s seconds ---" % (time.time() - start_time))