# Python script to call the Go shared library

from datetime import datetime
from ctypes import cdll, c_char_p

def main():

    # Load the shared library
    go_pls = cdll.LoadLibrary('./go_pls.so')

    # Define the return type of the function
    go_pls.c_module.restype = c_char_p

    start = datetime.now()
    # Call the Go function and decode the returned bytes to a string
    result = go_pls.c_module().decode('utf-8')

    # print("Duration:", result)



    end = datetime.now()
    print(' Duration: '+str(end-start)) 

if __name__ == "__main__":
    main()