from multiprocessing import Process
import subprocess
import os
import logging
import signal
import re

i = 3
a = []
while len(a) <= i:
		a.append(None)
a[i] =2
print(a)