import sys
import os
import op
import time


start_time = time.time()

def run():
	global done
	try:
		os.system('./plasp translate '+sys.argv[1]+' '+sys.argv[2]+' | clingo - encodings/incmode.lp encodings/preprocess.lp encodings/strips-incremental.lp -t 8 --time-limit 6')
		# os.system('./plasp translate '+sys.args[1]+ ' '+sys.args[2]+' > translate.lp')
		# os.system('clingo translate.lp strips-incremental.lp -t 4')
	except:
		print('./plasp '+sys.argv[1]+' '+sys.argv[2]+' | clingo - encodings/incmode.lp encodings/preprocess.lp encodings/strips-incremental.lp')
run()
print("--- %s seconds ---" % (time.time() - start_time))
