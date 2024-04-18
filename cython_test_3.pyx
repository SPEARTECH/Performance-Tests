import cython
from datetime import datetime

cpdef main(x):
    thing = []
    for i in range(x):
        thing.append(x)
    
    return len(thing)

start=datetime.now()
main(100000000)
finish=datetime.now()

print('Duration: '+str(finish-start))