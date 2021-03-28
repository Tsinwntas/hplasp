# Options Parser
import re

o = open("options", "r")
options = o.read()
o.close()

def getOption(option):

	optionLine = re.search(option+'[^\n]+', options);
	if optionLine == None:
		return "";

	params = str(optionLine.group()).split(" ")
	if len(params) != 2:
		return "";

	return params[1]

def getOptionOrDefault(option,default):

	optionLine = re.search(option+'[^\n]+', options);
	if optionLine == None:
		return default;

	params = str(optionLine.group()).split(" ")
	if len(params) != 2:
		return default;

	return params[1]
