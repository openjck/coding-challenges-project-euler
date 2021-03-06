package main

import (
    "fmt"
)

func main() {
    firstHundred := numbersBetween(1, 100)
    answer := squareOfSum(firstHundred) - sumOfSquares(firstHundred)

    fmt.Println(answer)
}

func numbersBetween(start int, end int) []int {
    numNumbers := end - start + 1
    numbers := make([]int, numNumbers, numNumbers)

    for i, n := 0, start; n <= end; i, n = i+1, n+1 {
        numbers[i] = n
    }

    return numbers
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
