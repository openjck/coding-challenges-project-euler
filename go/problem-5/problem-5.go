package main

import (
    "fmt"
    "../packages/utilities/mathutils"
)

func main() {
    numsBelowTwenty := mathutils.NumbersBetween(1, 20)
    answer := lcmMultiple(numsBelowTwenty)

    fmt.Println(answer)
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
    var higher, lower int

    /* Determine which argument is higher so that we don't waste time testing
       multiples of the lower number. We could use math.Min and math.Max, but
       that would require two tests. */
    if (a >= b) {
        higher = a
        lower = b
    } else {
        higher = b
        lower = a
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
