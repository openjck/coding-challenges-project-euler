package main

import "fmt"

func main() {
    numsBelowTwenty := numsBetween(1, 20)
    fmt.Println(lcmMultiple(numsBelowTwenty))
}

func numsBetween(start int, end int) []int {
    var nums []int

    for i := start; i <= end; i++ {
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

func lcm(n1 int, n2 int) int {
    var higher, lower int

    /* Determine which argument is higher so that we don't waste time testing
       multiples of the lower number. We could use math.Min and math.Max, but
       that would require two tests. */
    if (n1 >= n2) {
        higher = n1
        lower = n2
    } else {
        higher = n2
        lower = n1
    }

    var lcm, multiple int
    for i := 1; i <= lower; i++ {
        multiple = higher * i
        if (multiple % lower == 0) {
            lcm = multiple
            break
        }
    }

    return lcm
}
