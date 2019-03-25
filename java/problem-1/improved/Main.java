import java.lang.Math;

public class Main {
    public static void main(String[] args) {
        final int LIMIT = 999;

        int sumThree = sumMultiples(3, LIMIT);
        int sumFive = sumMultiples(5, LIMIT);
        int sumCommon = sumMultiples(15, LIMIT);

        int answer = sumThree + sumFive - sumCommon;

        System.out.println(answer);
    }

    // http://www.algebra.com/algebra/homework/Sequences-and-series.faq.question.427328.html
    private static int sumMultiples(int multiple, int limit) {
        int numTerms = limit / multiple;
        int lastTerm = multiple * numTerms;
        int sum = (int) ((numTerms / 2.0) * (multiple + lastTerm));
        return sum;
    }
}
