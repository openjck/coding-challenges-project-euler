package main

import (
    "fmt"
    "./fibonacci"
)

func main() {
    const limit = 4000000

    fs := fibonacci.NewFibonacciSequence(limit)
    answer := fs.SumEven()

    fmt.Println(answer)
}
