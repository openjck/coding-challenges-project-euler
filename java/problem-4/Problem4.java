import java.util.*;

public class Problem4 {
    public static void main(String[] args) {
        int answer = highestPalindromeProduct(100, 999);
        System.out.println(answer);
    }

    private static int highestPalindromeProduct(int lowestFactor, int highestFactor) {
        TreeSet<Integer> palindromes = new TreeSet<Integer>();

        for (int i = highestFactor; i >= lowestFactor; i--) {
            for (int j = highestFactor; j >= lowestFactor; j--) {
                int product = i * j;
                if (isPalindrome(product)) {
                    palindromes.add(product);
                }
            }
        }

        return palindromes.last();
    }

    private static boolean isPalindrome(int n) {
        String nString = String.valueOf(n);
        String nReversed = new StringBuilder(nString).reverse().toString();

        return (nString.equals(nReversed));
    }
}
