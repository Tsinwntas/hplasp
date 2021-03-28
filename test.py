from multiprocessing import Process
import subprocess
import os
import logging
import signal
import re

a = ["depot1","depot3","depot10","depot2","depot"]

a = sorted(a, key=lambda x: int(re.sub(r"[^0-9]", "", x)))
print(a)