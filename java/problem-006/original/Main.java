import Utilities.math.original.MathUtilities;

public class Main {
    public static void main(String[] args) {
        int[] firstHundred = MathUtilities.numbersBetween(1, 100);
        int answer = squareOfSum(firstHundred) - sumOfSquares(firstHundred);

        System.out.println(answer);
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
