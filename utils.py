import time
import sys
import fw
import re
import op
from os import path

fails = 0;
iteration = 0;
inits = []
problems = []
costs = [];
relaxed = [];
moves = [];

split = []
extra= "";
isRelaxedNecessary = op.getOption("program") == "incrementalSteps.py"

def setIteration(i):
	global iteration;
	iteration = i;
	fillLists(i);

def getIteration():
	global iteration;
	fillLists(iteration);
	return iteration;

def fillLists(i):
	while len(inits) <= i:
		inits.append('')
		problems.append('')
		costs.append(0)
		relaxed.append('')
		moves.append('')

def isDebug():
	return op.getOption("debug") == "true"

#To be passed as multithread function. 
#Prints msg with alternating one or two dots at the end.
def setExtra(extraMsg):
	global extra
	extra = extraMsg;
	print(extra+"                                                   ")


def loading(msg):
	rotation = 0;
	while(True):
		global extra
		if rotation%2 == 0:
			sys.stdout.write(msg+extra+"..\r")
		else:
			sys.stdout.write(msg+extra+".\r")
		sys.stdout.flush()
		rotation = (rotation + 1) % 2
		time.sleep(0.5)
		sys.stdout.write("\033[K")

#To end loading thread
def loaded(thread):
	thread.terminate();
	thread.join();
	print("Done.                                                                                                      ")

#Returns whether algorithm reached a verdict
def getDone():
	return path.exists("data/done")

def needsToBeUpdated(relaxed, cost):
	global isRelaxedNecessary

	if cost == 0:
		return True;

	if not isRelaxedNecessary:
		return True;

	if isCheckByRelaxedSteps():
		return isLessRelaxed(relaxed);

	return getDone() or isLessCost(cost);
	

def isLessRelaxed(relaxed):
	# print(str(relaxed) +" < " + str(getRelaxedSteps()) )
	return relaxed < getRelaxedSteps()

def isLessCost(cost):
	return cost < getToughenedCost(getCost());

def getToughenedCost(cost):
	toughness =float(op.getOptionOrDefault("toughness",1));
	if cost < 0:
		return cost * toughness;
	return cost * (2-toughness);

def getRelaxedSteps():
	if not path.exists("data/relaxed"):
		return 1000
	f = open("data/relaxed")
	relaxed = int(f.read())
	f.close()
	return relaxed

def setRelaxedSteps(steps):
	fw.write("data/relaxed", str(steps))

def getCost():
	if not path.exists("data/cost"):
		return 1000
	f = open("data/cost")
	cost = int(f.read())
	f.close()
	return cost

def setCost(cost):
	costs[getIteration()] = cost;
	fw.write("data/cost", str(cost))

#Splits problem into pre and post init so that it can rebuild it later
def split(problem):
	global split
	print("Splitting problem file to pre-init and post-init..")
	f = open(problem, "r")
	content = f.read()
	f.close()
	split = ["",""]
	split[0] = re.split('[(][:]init.*\n',content, flags=re.DOTALL)[0]; # 0: objects, 1: goal
	split[1] = "(:goal"+re.split('[(][:]goal',content)[1];
	print("Done.")
	return split

#Updates problem with new initial state
def updateProblem():
	global split
	i = open("data/init","r")
	updated_problem = split[0]+"\n"+i.read()+"\n"+split[1]
	fw.write("updated_problem.pddl", updated_problem)
	problems[getIteration()] = updated_problem;
	i.close();
	updateMoves();

def updateMoves():
	i = open("data/moves-single","r")
	currentMoves = i.read();
	fw.append("data/moves", currentMoves)
	moves[getIteration()] = moves[getIteration()-1]+currentMoves;
	i.close()

def isCheckByRelaxedSteps():
	return op.getOption("heuristic") == "relaxed"

def getInitialRelaxed():
	if not path.exists("data/initialRelaxed"):
		return 0
	f = open("data/initialRelaxed")
	relaxed = int(f.read())
	f.close()
	return relaxed


def setInitialRelaxed():
	fw.write("data/initialRelaxed", str(getRelaxedSteps()));

def updateProblemToIteration(i):
	iteration = i;
	print("UPDATE")
	fw.write("updated_problem.pddl", problems[i])
	fw.append("data/moves", moves[i])
	setCost(costs[i])

def failed():
	global fails;
	fails+=1;
	reset = op.getOptionOrDefault("reset",0);
	if reset == 0:
		return False; 
	if fails == int(reset):
		fw.write("data/moves", '')
		setIteration(0);
		updateProblemToIteration(0);
		return True;
	return False;

def setFails(f):
	global fails;
	fails = f;

