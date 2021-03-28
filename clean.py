import os
from os import path
import shutil

def removeGeneratedFiles():
	removeFolder('output')
	removeFolder('data')
	removeFile('translate.lp')
	removeFile('updated_problem.pddl')

def removeFolder(folder):
	if path.exists(folder):
		shutil.rmtree(folder) 

def removeFile(file):
	if path.exists(file):
		os.remove(file)

removeGeneratedFiles()
os.system('rm *.pyc')