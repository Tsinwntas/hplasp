import sys
import os
import shutil
import time
import multiprocessing 
import op
import fw
import utils
import subprocess

isBackground = op.getOptionOrDefault("background","false") == "true"
start_time = time.time()

def getMaxSolutions():
	sol = op.getOptionOrDefault("maxSolutions",0);
	if int(sol) > 0 :
		return ' -c _maxSolutions='+str(sol);
	return '';

def getSolveLimit():
	sol = op.getOptionOrDefault("solveLimit",0);
	if int(sol) > 0 :
		return ' --solve-limit='+str(sol);
	return '';

def getTimeLimit():
	sol = op.getOptionOrDefault("timeLimit",0);
	if int(sol) > 0 :
		return ' --time-limit='+str(sol);
	return '';

def runNoStrict():
	if not isBackground:
		t1 = multiprocessing.Process(target=utils.loading, args=("Trying non strict run",)) 
		t1.start()
	else:
		print("Trying non strict run...")
	try:
		p=subprocess.Popen(['./plasp translate '+domain+ ' '+problem+' > translate.lp'], shell=True)
		p.wait();
		p=subprocess.Popen(['clingo translate.lp incmode-py-mine4.lp -c _iteration=0 -c _parallel=1 -c c1=0 -c k='+op.getOptionOrDefault("k:","0")+' -t '+op.getOption("parallel")+getSolveLimit()+getTimeLimit()+' 1> log 2>&1'], shell=True)
		p.wait();
		utils.updateProblem()
		utils.setInitialRelaxed()
	except Exception as err:
		print(err)

	if not isBackground:
		utils.loaded(t1)
	else:
		print("Done.")

def runStrict(iteration, steps):
	try:
		if utils.isCheckByRelaxedSteps():	
			return runStrictBySteps(iteration, steps)
		else:
			return runStrictByCost(iteration, steps)
		
	except Exception as err:
		print(err)
		raise err

def runStrictBySteps(iteration,steps):
	previousRelaxedSteps = utils.getRelaxedSteps()
	p=subprocess.Popen(['./plasp translate '+domain+ ' updated_problem.pddl > translate.lp'], shell=True)
	p.wait();
	p=subprocess.Popen(['clingo translate.lp incmode-py-mine4.lp -c k='+op.getOptionOrDefault("k:","0")+' -c _iteration='+str(iteration)+' -c _parallel=1 -c c1='+str(steps)+getMaxSolutions()+' -t '+op.getOption("parallel")+getSolveLimit()+getTimeLimit()+' 1> log 2>&1'], shell=True)
	p.wait();
	currentRelaxedSteps = utils.getRelaxedSteps();
	if utils.getDone():
		utils.updateMoves();
		return True

	if utils.getCost() == 0:
		print("COST 0")
		if utils.failed():
			return True;
	if currentRelaxedSteps > previousRelaxedSteps:
		utils.setRelaxedSteps(previousRelaxedSteps)
		return False
	if currentRelaxedSteps < previousRelaxedSteps:
		utils.updateProblem()
		return True
	return False

def runStrictByCost(iteration,steps):
	previousCost = utils.getCost()
	p=subprocess.Popen(['./plasp translate '+domain+ ' updated_problem.pddl > translate.lp'], shell=True)
	p.wait();
	#' --opt-mode=opt,' + str(previousCost) +
	p=subprocess.Popen(['clingo translate.lp incmode-py-mine4.lp  --opt-mode=opt,'+str(int(utils.getToughenedCost(previousCost)))+' -c k='+op.getOptionOrDefault("k:","0")+' -c _iteration='+str(iteration)+' -c _parallel=1 -c c1='+str(steps)+getMaxSolutions()+' -t '+op.getOption("parallel")+getSolveLimit()+getTimeLimit()+' 1> log 2>&1'], shell=True)
	p.wait();
	currentCost = utils.getCost();
	print("COST IN LOOP "+str(currentCost))
	if utils.getDone():
		utils.updateMoves();
		return True

	if currentCost == 0:
		print("COST 0")
		if utils.failed():
			return True;
	if currentCost > utils.getToughenedCost(previousCost):
		utils.setCost(previousCost)
		return False
	if utils.getDone() or currentCost < utils.getToughenedCost(previousCost):
		utils.updateProblem()
		return True
	return False

def runStrictLoop():
	global iterations,ratio
	if not isBackground:
		t2 = multiprocessing.Process(target=utils.loading, args=("While problem isn't solved trying strict runs",))
		t2.start()
	else:
		print("While problem isn't solved trying strict runs...")
	currIteration = 0;
	maxSteps = op.getOption("maxSteps")
	ratio = int(op.getOptionOrDefault("incrementationRatio",0));
	startingSteps = op.getOption("steps");
	if startingSteps == "":
		startingSteps = getIncrementation(ratio);
	else:
		startingSteps = int(startingSteps)
	while not utils.getDone() and (iterations == 0 or currIteration < iterations):
		utils.setFails(0);
		currIteration= utils.getIteration()+1;
		utils.setIteration(currIteration);
		flag=False
		for steps in range(startingSteps,int(maxSteps),getIncrementation(ratio)):
			if utils.isDebug():
				if op.getOptionOrDefault("python","python3") == "python3":
					input("Press enter to continue")
				else:
					raw_input()
			if not isBackground:
				utils.setExtra(" (iteration:{} / steps:{})".format(currIteration,steps))
			else:
				print(" (iteration:{} / steps:{})".format(currIteration,steps))
			if runStrict(currIteration, steps):
				flag = True
				break
			print("COST: "+ str(utils.getCost()))
			# if utils.getCost() == 0:
			# 	break;
		if not flag:
			if not isBackground:
				utils.loaded(t2)
			print("Unable to solve within strict step limit.")
			return

		print("COST mes to while: "+ str(utils.getCost()))
	
	if not isBackground:
		utils.loaded(t2)
	else:
		print("Done.")

def getIncrementation(ratio):
	return max(1,ratio);
#	return max(1,int(utils.getInitialRelaxed()/ratio)) if ratio > 0 else 1;

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
