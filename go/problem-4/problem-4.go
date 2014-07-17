package main

import (
    "fmt"
    "sort"
    "strconv"
)

func main() {
    palindromes := palindromeProducts(100, 999)
    sort.Ints(palindromes)
    answer := palindromes[len(palindromes) - 1]

    fmt.Println(answer)
}

func palindromeProducts(lowestFactor int, highestFactor int) []int {
    var palindromes []int

    for i := highestFactor; i >= lowestFactor; i-- {
        for j := highestFactor; j >= lowestFactor; j-- {
            product := i * j

            if (isPalindrome(product)) {
                palindromes = append(palindromes, product)
            }
        }
    }

    return palindromes
}

func isPalindrome(n int) bool {
    s := strconv.Itoa(n)

    // The index of the last character in the first half of the string.
    // For strings with an odd number of characters, this is the character
    // shared by both halves.
    firstHalfIndex := (len(s) + 1) / 2

    for i := 0; i < firstHalfIndex; i++ {
        character := s[i]
        characterOpposite := s[len(s) - 1 - i]
        if (character != characterOpposite) {
            return false
        }
    }

    return true
}
