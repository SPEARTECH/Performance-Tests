import sys
import os
 
# getting the name of the directory
# where the this file is present.
current = os.path.dirname(os.path.realpath(__file__))
 
# Getting the parent directory name
# where the current directory is present.
parent = os.path.dirname(current)
 
# adding the parent directory to 
# the sys.path.
sys.path.append(parent)

import python_test_1
import cython_test_4
from datetime import datetime

TEST = 'cython' #cython

start = datetime.now()
if TEST == 'python':
    python_test_1.main(100000000)
elif TEST == 'cython':
    cython_test_4.main(100000000)
end = datetime.now()
print(TEST+' Duration: '+str(end-start)) 