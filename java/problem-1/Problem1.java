public class Problem1 {
    public static void main(String[] args) {
        final int LIMIT = 1000;

        int sumThree = sumMultiples(3, LIMIT);
        int sumFive = sumMultiples(5, LIMIT);
        int sumCommon = sumMultiples(15, LIMIT);

        int answer = sumThree + sumFive - sumCommon;

        System.out.println(answer);
    }

    private static int sumMultiples(int base, int limit) {
        int sum = 0;
        for (int i = base; i < limit; i += base) {
            sum += i;
        }
        return sum;
    }
}
