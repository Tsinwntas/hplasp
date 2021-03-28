import os
from os import path
import shutil

def clean():
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
