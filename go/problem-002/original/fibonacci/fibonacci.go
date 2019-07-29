package fibonacci

type FibonacciSequence struct {
    sequence []int
}

func NewFibonacciSequence(limit int) *FibonacciSequence {
    sequence := make([]int, 0)

    last := 0
    next := 1
    current := next

    for next <= limit {
        sequence = append(sequence, next)

        current = next
        next = current + last
        last = current
    }

    return &FibonacciSequence{sequence}
}

func (f *FibonacciSequence) SumEven() (sum int) {
    sequence := f.sequence
    for _,fib := range sequence {
        if fib % 2 == 0 {
            sum += fib
        }
    }
    return
}
