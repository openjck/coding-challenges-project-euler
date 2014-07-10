public class Problem4 {
    public static void main(String[] args) {
        int answer = highestPalindromeProduct(100, 999);
        System.out.println(answer);
    }

    private static int highestPalindromeProduct(int lowestFactor, int highestFactor) {
        int highestPalindromeProduct = 0;

        for (int i = highestFactor; i >= lowestFactor; i--) {
            for (int j = highestFactor; j >= lowestFactor; j--) {
                int product = i * j;

                if (isPalindrome(product) && (product > highestPalindromeProduct)) {
                    highestPalindromeProduct = product;
                }
            }
        }

        return highestPalindromeProduct;
    }

    private static boolean isPalindrome(int n) {
        String nString = String.valueOf(n);
        String nReversed = new StringBuilder(nString).reverse().toString();

        return (nString.equals(nReversed));
    }
}
