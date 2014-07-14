package Utilities.math;

public class MathUtilities {
    public static int[] numbersBetween(int start, int end) {
        int[] numbers = new int[end - start + 1];

        for(int i = start; i <= end; i++) {
            int index = i - start;
            numbers[index] = i;
        }

        return numbers;
    }
}
