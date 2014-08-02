import java.lang.Math;
import java.util.*;

public class Problem3 {
    public static void main(String[] args) {
        long answer = greatestPrimeFactor(600851475143L);
        System.out.println(answer);
    }

    private static long greatestPrimeFactor(long n) {
        TreeSet<Long> primeFactors = primeFactors(n);
        return primeFactors.last();
    }

    private static TreeSet<Long> primeFactors(long n) {
        TreeSet<Long> primeFactors = new TreeSet<Long>();
        ArrayList<Long> factors = factors(n);

        for (Long factor : factors) {
            if(isPrime(factor)) {
                primeFactors.add(factor);
            }
        }

        return primeFactors;
    }

    private static ArrayList<Long> factors(long n) {
        ArrayList<Long> factors = new ArrayList<Long>();

        for(long i = 1; i <= Math.sqrt(n); i++) {
            if(n % i == 0) {
                long complement = n / i;

                factors.add(i);

                if(i != complement) {
                    factors.add(complement);
                }
            }
        }

        return factors;
    }

    private static boolean isPrime(long n) {
        for(long i = 2; i <= Math.sqrt(n); i++) {
            if(n % i == 0) {
                return false;
            }
        }
        return true;
    }
}
