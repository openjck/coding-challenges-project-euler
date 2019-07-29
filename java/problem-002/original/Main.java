public class Main {
    public static void main(String[] args) {
        final int LIMIT = 4000000;

        FibonacciSequence sequence = new FibonacciSequence(LIMIT);
        int answer = sequence.sumEven();

        System.out.println(answer);
    }
}
