package mathutils

func NumbersBetween(start int, end int) []int {
    numNumbers := end - start + 1
    numbers := make([]int, numNumbers, numNumbers)

    for i, n := 0, start; n <= end; i, n = i+1, n+1 {
        numbers[i] = n
    }

    return numbers
}
