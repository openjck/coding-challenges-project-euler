package main

import (
    "fmt"
    "math"
    "sort"
)

func main() {
    answer := greatestPrimeFactor(600851475143)
    fmt.Println(answer)
}

func greatestPrimeFactor(n int) int {
    pf := primeFactors(n)
    return pf[len(pf)-1]
}

func primeFactors(n int) []int {
    f := factors(n)
    var pf []int

    for _,factor := range f {
        if isPrime(factor) {
            pf = append(pf, factor)
        }
    }

    return pf
}

func factors(n int) []int {
    fsrN := flooredSquareRoot(n)
    var f []int

    for i := 1; i <= fsrN; i++ {
        if (n % i == 0) {
            if (n / i == i) {
                f = append(f, i)
            } else {
                f = append(f, i, n/i)
            }
        }
    }

    sort.Ints(f)
    return f
}

func isPrime(n int) bool {
    fsrN := flooredSquareRoot(n)

    for i := 2; i <= fsrN; i++ {
        if (n % i == 0) {
            return false
        }
    }

    return true
}

func flooredSquareRoot(n int) int {
    return int(math.Sqrt(float64(n)))
}
