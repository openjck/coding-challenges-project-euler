package main

import (
    "fmt"
    "math"
)

func main() {
    firstTwenty := numbersBetween(1, 20)
    answer := lcmMultiple(firstTwenty)

    fmt.Println(answer)
}

func numbersBetween(start int, end int) []int {
    var nums []int

    for i := 1; i <= end; i++ {
        nums = append(nums, i)
    }

    return nums
}

func lcmMultiple(nums []int) int {
    var lcmCurrent int

    for i,num := range nums {
        if i == 0 {
            lcmCurrent = num
        } else {
            lcmCurrent = lcm(lcmCurrent, num)
        }
    }

    return lcmCurrent
}

func lcm(a int, b int) int {
    gcd := gcd(a, b)
    lcm := int(math.Abs(float64(a * b))) / gcd
    return lcm
}

func gcd(a int, b int) int {
    // Unlike in Java, we can't call this variable gcd. The compiler would think
    // we were referring to this variable when we call gcd() later.
    gcdValue := 1

    if (b == 0) {
        gcdValue = a
    } else if (a >= b && b > 0) {
        gcdValue = gcd(b, a % b)
    } else if (b >=a && a > 0) {
        gcdValue = gcd(b, a % b)
    }

    return gcdValue
}
