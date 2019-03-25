import java.util.LinkedList;

public class FibonacciSequence {
    LinkedList<Integer> sequence = new LinkedList<Integer>();

    public FibonacciSequence(final int LIMIT) {
        int last = 0;
        int next = 1;
        int current = next;

        while (next <= LIMIT) {
            sequence.add(next);

            current = next;
            next = current + last;
            last = current;
        }
    }

    public int sumEven() {
        int sum = 0;

        for (int element : sequence) {
            if (element % 2 == 0) {
                sum += element;
            }
        }

        return sum;
    }
}
