#File Writer
import os

def checkFolder(folder):
	if not os.path.exists(folder):
		os.makedirs(folder)

def checkFolders(file):
	foldersCount = file.count("/")
	folders = file.split("/");
	path = ""
	for folder in range(foldersCount):
		if path != "":
			path += "/"
		path += folders[folder];
		checkFolder(path)

def write(file, contents):
	useFile(file,contents,"w")

def append(file, contents):
    useFile(file,contents,"a")

def useFile(file, contents, action):
	checkFolders(file)
	f = open(file, action)
	f.write(contents)
	f.close()