#script (python) 
import clingo
import os
import fw
import utils
import op
from datetime import datetime
import sys
import time

def printTimeDiff(msg):
    global t;
    now = time.monotonic();
    appendOut(msg+" "+str(now-t)+"\n");
    t=now;

def getOutputFileName():
    fw.checkFolder("output")
    path, dirs, files = next(os.walk("output"))
    return "out_"+str(len(files))

parser = op.getOption("parser")
holds = []
inits = []
moves = []
occurs = []
cost = 0;
iteration = "";
steps = "";
output_name = getOutputFileName();
t = time.monotonic();


def get(val, default):
    return val if val != None else default

def saveInfo(m,step,ret):
    global cost, holds, moves, inits, occurs
    printTimeDiff("done")
    if(len(m.cost)):
        cost = m.cost[0]
        print(cost)
    symbols = m.symbols(atoms=True)
    holds = [v for v in symbols if v.name=="holds" and isTrueHolds(v)]
    inits = [v for v in symbols if v.name == "initialState" and isTrueInitialState(v)]
    moves = [v for v in symbols if v.name == "move"]
    occurs = [v for v in symbols if v.name == "occurs"]
    # appendOut("\n**\nIS TRUE: "+str(len(symbols))+"\n**\n");
    logInfo()

def logInfo():
    printTimeDiff("logging")
    prevCost = utils.getCost();
    if isDone():
        writeDone();
    relaxed = getRelaxed();
    if utils.needsToBeUpdated(relaxed,cost):
        writeInit();
        writeRelaxedCount(relaxed);
        writeCost();
        writeMovesSingle();
    printTimeDiff("logging-done")

def isTrueInitialState(v):
    try:
        args = len(v.arguments)
        return v.arguments[args-1].arguments[len(v.arguments[args-1].arguments)-1].name == 'true' # or (len(v.arguments)>2 and isinstance(v.arguments[2].arguments,list) and v.arguments[2].arguments[len(v.arguments[2].arguments)-1].name == 'true')
    except:
        return False;

def isTrueHolds(v):
    try:
        return v.arguments[1].arguments[len(v.arguments[1].arguments)-1].name == 'true' # or (len(v.arguments)>2 and isinstance(v.arguments[2].arguments,list) and v.arguments[2].arguments[len(v.arguments[2].arguments)-1].name == 'true')
    except:
        return False;

def isDone():
    return len(occurs) == len(moves)

def writeCost():
    global cost
    fw.write("data/cost", str(cost))

def writeDone():
    global occurs
    fw.write("data/done", str(isDone()))

def writeInit():
    global iteration,steps, inits, parser
    out = "(:init\n"
    prevName = [""]
    for init in inits:
        if init.arguments[0].number != None:
            for arg in init.arguments:
                if(parser == "dashes"):
                    out=f"{out}{parseInitByDashes(arg)}"
                else:
                    out=f"{out}{parseInitBySpaces(arg, prevName)}"
    fw.write("data/init", out+"\n)")
    fw.write("data/init_iteration_"+str(iteration)+"_steps_"+str(steps), out+"\n)")

def parseInitByDashes(arg):
    out = "";
    if arg.name == 'variable' :
        obj = arg.arguments[0].string;
        if obj == None:
            return "";
        out = f"{out}({obj})\n"
        out = f"{out[0:len(out)-1]}"
    return out;

def parseInitBySpaces(arg, prevName):
    out = "";
    if arg.name == 'variable' :
        args = arg.arguments[0].arguments;
        if args == None:
            return "";
        if args[0].string != prevName[0]:
            if len(prevName[0]) != 0:
                out+="\n\n"
            prevName[0] = args[0].string
        else:
            out+=" "
        out = f"{out}("
        for a in args:
            if a.string != None:
                out = f"{out}{a.string} "
            else:
                out = f"{out}{a.arguments[0].string} "
        out = f"{out[0:len(out)-1]})"
    return out;

def writeRelaxedCount(relaxed):
    fw.write("data/relaxed", str(relaxed))

def getRelaxed():
    global occurs,moves
    return getFootsteps(occurs)-getFootsteps(moves);

def getFootsteps(list):
    if(list == None or len(list) == 0):
        return 0;
    return list[len(list)-1].arguments[1].number;

def writeMovesSingle():
    global moves, parser, iteration, steps, t
    out = ""
    prevName = ""
    for move in moves:
        for arg in move.arguments:
            if arg.name == 'action' :
                args = arg.arguments if parser == "dashes" else arg.arguments[0].arguments;
                out += "("
                for a in args:
                    if a.string != None:
                        out = f"{out}{a.string} "
                    else:
                        out = f"{out}{a.arguments[0].string} "
                out = f"{out[0:len(out)-1]})\n"
    fw.write("data/moves-single-"+str(iteration)+"-"+str(steps)+"-"+str(t), out)
    fw.write("data/moves-single", out)

def appendOut(contents):    
    global output_name, iteration, steps
    fw.append("output/"+output_name+"_iteration_"+str(iteration)+"_steps_"+str(steps), contents)

def parseArguments(symbol):
    for arg in init.arguments:
        if arg.name == 'variable' :
            args = arg.arguments[0].arguments;
            if(args[0].string != prevName):
                if(len(prevName) != 0):
                    out+="\n\n"
                prevName = args[0].string
            else:
                out+=" "
            out = f"{out}("
            for a in args:
                if a.string != None:
                    out = f"{out}{a.string} "
                else:
                    out = f"{out}{a.arguments[0].string} "
            out = f"{out[0:len(out)-1]})"

def main(prg):
    global output_name, iteration,steps
    iteration = prg.get_const("_iteration")
    steps = get(prg.get_const("c1"),0)
    fw.write("output/"+output_name+"_iteration_"+str(iteration)+"_steps_"+str(steps), "")
    imin   = get(prg.get_const("imin"), clingo.Number(0))
    imax   = prg.get_const("imax")
    istop  = get(prg.get_const("istop"), clingo.String("SAT"))
    max_solution = prg.get_const("_maxSolutions");
    if max_solution is not None:
        max_solution = int(str(max_solution))
    # print("LOADING...")
    # prg.load("clingo-prob.lp")
    prg.load("preprocess.lp")
    prg.load("strips-incremental-c1-start.lp")
    # print("LOADED")

    # prg.configuration.solve.global_restarts = "-1,L,5"
    # prg.configuration.solve.opt_mode= 'opt'
    solution_number = 0;
    step, ret = 0, None
    printTimeDiff("start")
    while ((step < 50 ) and
           (step == 0 or step < imin.number or (
              (istop.string == "SAT"     and not ret.satisfiable) or
              (istop.string == "UNSAT"   and not ret.unsatisfiable) or 
              (istop.string == "UNKNOWN" and not ret.unknown)))):
        if max_solution == None or max_solution <= 0 or (max_solution > 0 and max_solution > solution_number):
            printTimeDiff("start-while")
            parts = []
            parts.append(("check", [step]))
            printTimeDiff("checkstep")        
            if step > 0:
                prg.release_external(clingo.Function("query", [step-1]))
                parts.append(("step", [step]))
                printTimeDiff("step")
                prg.cleanup()
            else:
                parts.append(("base", []))
                printTimeDiff("base")
            prg.ground(parts)
            printTimeDiff("ground")
            prg.assign_external(clingo.Function("query", [step]), True)
            printTimeDiff("assignexternal")
            ret = prg.solve(on_model=lambda m: saveInfo(m,step,ret))
            printTimeDiff("solve")
        solution_number = solution_number + 1;                
        step = step+1
    appendOut("*************************************************************************\n")
    appendOut("Cost: {}\n".format(cost))
    appendOut("-------------------------------------------------------------------------\n")
    appendOut("\n".join('{}' for _ in range(len(inits))).format(*inits))
    appendOut("\n-------------------------------------------------------------------------\n")
    # appendOut("\n".join('{}' for _ in range(len(holds))).format(*holds))
    appendOut("-------------------------------------------------------------------------\n")
    appendOut("\n".join('{}' for _ in range(len(moves))).format(*moves))
    appendOut("\n-------------------------------------------------------------------------\n")
    appendOut("\n".join('{}' for _ in range(len(occurs))).format(*occurs))
    appendOut("\n*************************************************************************\n")
    appendOut("\n\n\n\n\n\n\n\n")
    # printTimeDiff("logAfterWhile")
    # logInfo()
    # printTimeDiff("logAfterWhileDone")

#end.

#program check(t).
#external query(t).
