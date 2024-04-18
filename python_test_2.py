import numpy as np
from datetime import datetime

def main(x):
    thing = []
    for i in np.arange(0, x):
        thing.append(x)

    return len(thing)

start=datetime.now()
main(100000000)
finish=datetime.now()

print('Duration: '+str(finish-start))