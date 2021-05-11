import os
import fw
import sys, getopt
import time
import subprocess
import signal 
import re
import op

blacklist = ["zenotravel","sokoban","storage"]

def updateFiles(dir,domain,problem):
	os.system("cp all-domains/"+dir+"/"+domain+" domains/domain.pddl")
	os.system("cp all-domains/"+dir+"/"+problem+" problems/problem.pddl")
	os.system("cp all-domains/"+dir+"/options options")

def updateOptions(experiment):
	options = open("experiments/"+experiment+"/options","r");
	fw.write("options",options.read()) 
	options.close();

def checkIfSuccessfulPlan(domain,problem):
	log = open("experiments/hplasp-relaxed-log-"+domain+"-"+problem)
	out = log.read();
	log.close();
	return "Successful plans" in out;	

def checkIfSuccessfulClingo(domain,problem):
	log = open("experiments/clingo-log-"+domain+"-"+problem)
	out = log.read();
	log.close();
	# if "SATISFIABLE" in out and not("UNKNOWN" in out or "UNSATISFIABLE" in out):
	# 	print("SATISFIABLE" in out)
	# 	print("UNKNOWN" in out)
	# 	print("UNSATISFIABLE" in out)
	# 	sys.exit();
	return "SATISFIABLE" in out and not("UNKNOWN" in out or "UNSATISFIABLE" in out);	

def logTime(results, type, domain,problem, isSuccess, t):
	fw.append("experiments/"+results, type+","+domain+","+problem+","+str(isSuccess) + "," + str(t)+"\n");

def getDomains(dir,innerfiles):
	domains = [v for v in innerfiles if "domain" in v]
	if len(domains)==0:
		domains = [v for v in innerfiles if dir.lower() in v.lower()]
	if len(domains)>1:
		return sorted(domains, key=lambda x: int(re.sub(r"[^0-9]", "", x)))
	return domains

def getProblems(dir,domains,innerfiles):
	problems = [v for v in innerfiles if v not in domains and v != "options"]
	if len(problems) > 1	:
		return sorted(problems, key=lambda x: int(re.sub(r"[^0-9]", "", x)))
	return problems

def runHplasp(dir,domain,problem):
	global t;
	start_time = time.time()
	p = subprocess.Popen(["python3 run-thesis.py > experiments/hplasp-relaxed-log-"+domain+"-"+problem], preexec_fn=os.setsid, shell=True)
	try:
		p.wait(t)
		print("Done.")
	except subprocess.TimeoutExpired: 
		print("Not done in time limit.")
		os.killpg(os.getpgid(p.pid), signal.SIGTERM)
	# os.system("python3 run-thesis.py > experiments/hplasp-relaxed-log-"+domain+"-"+problem)
	end_time = time.time();
	logTime("results-hplasp-relaxed","hplasp(relaxed)",dir,problem,checkIfSuccessfulPlan(domain,problem),end_time - start_time)
	if os.path.exists("data/moves"):
		os.system("cp data/moves experiments/hplasp-relaxed-moves-"+dir+"-"+problem)

def runClingo(dir,domain,problem):
	global t;
	start_time = time.time()
	# p = subprocess.Popen(["./plasp translate all-domains/"+dir+"/"+domain+ " all-domains/"+dir+"/"+problem+" > translate.lp"], preexec_fn=os.setsid, shell=True)
	# p.wait();
	# p = subprocess.Popen(["clingo translate.lp strips-incremental.lp -t "+op.getOption("parallel") + " --time-limit="+str(t)+" 1> experiments/clingo-log-"+domain+"-"+problem+" 2>&1"], preexec_fn=os.setsid, shell=True)
# './plasp translate '+sys.argv[1]+' '+sys.argv[2]+' | clingo - encodings/incmode.lp encodings/preprocess.lp encodings/strips-incremental.lp'
	p = subprocess.Popen(["./plasp translate all-domains/"+dir+"/"+domain+ " all-domains/"+dir+"/"+problem+" | clingo - encodings/incmode.lp encodings/preprocess.lp encodings/strips-incremental.lp -t "+op.getOption("parallel") + " --time-limit="+str(t)+" 1> experiments/clingo-log-"+domain+"-"+problem+" 2>&1"], preexec_fn=os.setsid, shell=True)

	try:
		p.wait(t)
		print("Done.")
	except subprocess.TimeoutExpired: 
		print("Not done in time limit.")
		os.killpg(os.getpgid(p.pid), signal.SIGTERM)
	# os.system("python3 run-thesis.py > experiments/hplasp-relaxed-log-"+domain+"-"+problem)
	end_time = time.time();
	logTime("results-clingo","clingo",dir,problem,checkIfSuccessfulClingo(domain,problem),end_time - start_time)

t = 0;
cont = False;

onlyHplasp = False;
onlyClingo = False;
singleDomain = None;

try:
	opts, args = getopt.getopt(sys.argv[1:],"ht:o:c:d:",["continue","max-duration=","only=","domain="])
	for opt, arg in opts:
		if opt == '-h':
			print ('-c Ignore experiment if results exist. (--continue)\n -t <seconds> Force quit an epxeriment after t seconds. (--max-duration <seconds>)');
			sys.exit()
		elif opt in ("-t", "--max-duration"):
			t = int(arg)
		elif opt in ("-c", "--continue"):
			cont = True
		elif opt in ("-d", "--domain"):
			singleDomain = arg; 
		elif opt in ("-o", "--only"):
			if arg == "hplasp":
				onlyHplasp = True;
			elif arg == "clingo":
				onlyClingo = True;
except getopt.GetoptError:
	print ('Invalid argumens. Use -c/--continue and/or -t/--max-duration <seconds>');
	sys.exit(2)
except ValueError:
	print ('Time must be a number.');
	sys.exit(2)

# os.mkdir("experiments/")
if not cont or not os.path.exists("experiments/results-hplasp-relaxed"):
	fw.write("experiments/results-hplasp-relaxed","");
for root, dirs, files in os.walk("all-domains"):
	if onlyClingo:
		break;

	print("HPLASP using relaxed steps")
	dirs.sort();
	for dir in dirs:
		if singleDomain is not None and singleDomain != dir:
			continue;
		if dir in blacklist:
			print("Domain "+dir+" blacklisted.")
			continue;
		print("Domain: "+dir)
		for innerroot, innerdirs, innerfiles in os.walk("all-domains/"+dir):
			innerfiles.sort()
			domains = getDomains(dir,innerfiles)
			problems = getProblems(dir,domains,innerfiles);
			for index in range(0,len(problems)):
				problem = problems[index]
				domain = domains[0] if len(domains) == 1 else domains[index]
				if dir+","+problem in blacklist:
					print("Blacklisted: "+domain+" "+problem)
					continue;
				if cont and os.path.exists("experiments/hplasp-relaxed-log-"+domain+"-"+problem):
					print("Experiment Results exist: "+domain+" "+problem)
				print(domain,problem)
				updateFiles(dir,domain,problem)
				runHplasp(dir,domain,problem)
	break

if not cont or not os.path.exists("experiments/results-clingo"):
	fw.write("experiments/results-clingo","");
for root, dirs, files in os.walk("all-domains"):
	if onlyHplasp:
		break;

	print("Clingo")
	dirs.sort();
	for dir in dirs:
		if singleDomain is not None and singleDomain != dir:
			continue;
		print("Domain: "+dir)
		for innerroot, innerdirs, innerfiles in os.walk("all-domains/"+dir):
			innerfiles.sort()
			domains = getDomains(dir,innerfiles)
			problems = getProblems(dir,domains,innerfiles);
			for index in range(0,len(problems)):
				problem = problems[index]
				domain = domains[0] if len(domains) == 1 else domains[index]
				if dir+","+problem in blacklist:
					print("Blacklisted: "+domain+" "+problem)
					continue;
				if cont and os.path.exists("experiments/clingo-log-"+domain+"-"+problem):
					print("Experiment Results exist: "+domain+" "+problem)
				print(domain,problem)
				updateFiles(dir,domain,problem)
				runClingo(dir,domain,problem)
	break


