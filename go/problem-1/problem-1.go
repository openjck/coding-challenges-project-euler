package main

import "fmt"

func main() {
    const limit = 999

    sumThree := sumMultiples(3, limit)
    sumFive := sumMultiples(5, limit)
    sumCommon := sumMultiples(15, limit)

    answer := sumThree + sumFive - sumCommon

    fmt.Println(answer)
}

// http://www.algebra.com/algebra/homework/Sequences-and-series.faq.question.427328.html
func sumMultiples(multiple int, limit int) (sum int) {
    numTerms := limit / multiple
    lastTerm := multiple * numTerms
    sum = int((float32(numTerms) / 2.0) * float32(multiple + lastTerm))
    return
}
