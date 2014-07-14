import Utilities.math.MathUtilities;

public class Problem5 {
    public static void main(String[] args) {
        int[] numbersBelowTwenty = MathUtilities.numbersBetween(1,20);
        long answer = lcmMultiple(numbersBelowTwenty);
        System.out.println(answer);
    }

    public static long lcmMultiple(int[] nums) {
        long lcmCurrent = nums[0];

        for (int i = 1; i < nums.length; i++) {
            lcmCurrent = lcm(lcmCurrent, nums[i]);
        }

        return lcmCurrent;
    }

    public static long lcm(long a, long b) {
        long gcd = gcd(a, b);
        long lcm = Math.abs(a * b) / gcd;
        return lcm;
    }

    private static long gcd(long a, long b) {
        long gcd = 1;

        if (b == 0) {
            gcd = a;
        }
        else if (a >= b && b > 0) {
            gcd = gcd(b, a % b);
        }
        else if (b >= a && a > 0) {
            gcd = gcd(b, a % b);
        }

        return gcd;
    }
}
