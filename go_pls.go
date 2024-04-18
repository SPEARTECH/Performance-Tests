package main

import (
    "fmt"
    "time"
    "C"
)

//export c_module
func c_module() *C.char {
    start := time.Now()

    var numbers []int
    for i := 0; i <= 100000000; i++ {
        numbers = append(numbers, i)
    }

    duration := time.Since(start)
    // fmt.Printf("Duration: %s\n", duration)
    // return (duration.String())
    return C.CString(string(duration))
}

func main() {
    start := time.Now()
    c_module()

    // var numbers []int
    // for i := 0; i <= 100000000; i++ {
    //     numbers = append(numbers, i)
    // }
    
    duration := time.Since(start)
    fmt.Printf("Duration: %s\n", duration)
}
