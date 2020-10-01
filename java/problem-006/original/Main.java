public class Main {
    public static void main(String[] args) {
        int[] firstHundred = numbersBetween(1, 100);
        int answer = squareOfSum(firstHundred) - sumOfSquares(firstHundred);

        System.out.println(answer);
    }

    public static int[] numbersBetween(int start, int end) {
        int[] numbers = new int[end - start + 1];

        for(int i = start; i <= end; i++) {
            int index = i - start;
            numbers[index] = i;
        }

        return numbers;
    }

    private static int squareOfSum(int[] nums) {
        int sum = 0;

        for (int num : nums) {
            sum += num;
        }

        return (sum * sum);
    }

    private static int sumOfSquares(int[] nums) {
        int sum = 0;

        for (int num : nums) {
            int square = (num * num);
            sum += square;
        }

        return sum;
    }
}
