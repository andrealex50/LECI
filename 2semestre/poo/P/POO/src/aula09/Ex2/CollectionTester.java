package aula09.Ex2;

import java.util.Collection;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.HashSet;
import java.util.TreeSet;

public class CollectionTester {
    public static void main(String[] args) {


        int[] DIM = { 1000, 5000, 10000, 20000, 40000, 100000 };

        System.out.printf("Collection       1000       5000       10000     20000       40000      100000 \n");
        double[][] ArrayListTimes = new double[6][3];
        double[][] LinkedLinkTimes = new double[6][3];
        double[][] HashSetTimes = new double[6][3];
        double[][] TreeSetTimes = new double[6][3];

        for (int i = 0; i < DIM.length; i++) {
			Collection<Integer> ArrayList = new ArrayList<>();
			double[] values = checkPerformance(ArrayList, DIM[i]);
			ArrayListTimes[i] = values;

			Collection<Integer> LinkedLink = new LinkedList<>();
			values = checkPerformance(LinkedLink, DIM[i]);
			LinkedLinkTimes[i] = values;

			Collection<Integer> HashSet = new HashSet<>();
			values = checkPerformance(HashSet, DIM[i]);
			HashSetTimes[i] = values;

			Collection<Integer> TreeSet = new TreeSet<>();
			values = checkPerformance(TreeSet, DIM[i]);
			TreeSetTimes[i] = values;
		}

        System.out.println("ArrayList");
		printResults(ArrayListTimes, DIM);

		System.out.println("LinkedList");
		printResults(LinkedLinkTimes, DIM);

		System.out.println("HashSet");
		printResults(HashSetTimes, DIM);

		System.out.println("TreeSet");
		printResults(TreeSetTimes, DIM);

    }


    private static double[] checkPerformance(Collection<Integer> col, int DIM) {


        double start, stop;
        // Add
        start = System.nanoTime(); // clock snapshot before
        for(int i=0; i<DIM; i++ )
            col.add( i );
        stop = System.nanoTime(); // clock snapshot after
        double add = (stop-start)/1e6; // convert to milliseconds

        //System.out.println(col.size()+ ": Add to " + col.getClass().getSimpleName() +" took " + delta + "ms");
        // Search
        start = System.nanoTime(); // clock snapshot before
        for(int i=0; i<DIM; i++ ) {
            int n = (int) (Math.random()*DIM);
            if (!col.contains(n)) 
                System.out.println("Not found???"+n);
            }
        stop = System.nanoTime(); // clock snapshot after
        double search = (stop-start)/1e6; // convert nanoseconds to milliseconds

        //System.out.println(col.size()+ ": Search to " + col.getClass().getSimpleName() +" took " + delta + "ms");
        // Remove
        start = System.nanoTime(); // clock snapshot before
        Iterator<Integer> iterator = col.iterator();
        while (iterator.hasNext()) {
            iterator.next();
            iterator.remove();
        }
        stop = System.nanoTime(); // clock snapshot after
        double remove = (stop-start)/1e6; // convert nanoseconds to milliseconds

        //System.out.println(col.size() + ": Remove from "+ col.getClass().getSimpleName() +" took " + delta + "ms");

        return new double[] { add, search, remove };


    }

    private static void printResults(double[][] values, int[] DIM) {
		String[] tests = { "add", "search", "remove" };

		for (int i = 0; i < tests.length; i++) {
			System.out.print(String.format("%-10s ", tests[i]));
			for (int j = 0; j < DIM.length; j++) {
				System.out.print(String.format("%10.2f ", values[j][i]));
			}
			System.out.println();
		}
        System.out.println();
	}
}