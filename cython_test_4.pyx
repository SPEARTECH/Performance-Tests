import cython
from datetime import datetime

cpdef int main(x):
    cdef list thing = []
    cdef int i
    for i in range(x):
        thing.append(x)
    
    return len(thing)

start=datetime.now()
main(100000000)
finish=datetime.now()

print('Duration: '+str(finish-start))