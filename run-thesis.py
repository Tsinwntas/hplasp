import sys
import os
import re
import op
import cleanup

try:
	print("Removing generated files..")
	cleanup.clean();
	print("Done.")
	domain = op.getOption("domain");
	problem = op.getOption("problem"); 
	os.system(op.getOptionOrDefault("python","python")+' '+op.getOption("program")+" "+domain+" "+problem+" "+op.getOption("iterations"))
	os.system('./validate domains/'+domain+' problems/'+problem+' data/moves');
except Exception as err:
	print(err)
