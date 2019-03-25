package main

import "fmt"

func main() {
    const limit = 1000

    sumThree := sumMultiples(3, limit)
    sumFive := sumMultiples(5, limit)
    sumCommon := sumMultiples(15, limit)

    answer := sumThree + sumFive - sumCommon

    fmt.Println(answer)
}

func sumMultiples(base int, limit int) (sum int) {
    for i := 0; i < limit; i+=base {
        sum += i
    }
    return
}
