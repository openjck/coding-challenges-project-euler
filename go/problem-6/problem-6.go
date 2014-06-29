package main

import (
    "fmt"
    "../packages/utilities/mathutils"
)

func main() {
    firstHundred := mathutils.NumbersBetween(1, 100)
    answer := squareOfSum(firstHundred) - sumOfSquares(firstHundred)

    fmt.Println(answer)
}

func squareOfSum(nums []int) int {
    var sum int

    for _, num := range nums {
        sum += num
    }

    return (sum * sum)
}

func sumOfSquares(nums []int) int {
    var sum int

    for _, num := range nums {
        square := num * num
        sum += square
    }

    return sum
}
