import java.util.TreeSet;

public class demoTreeSet {
    public static void main(String[] args) {
        TreeSet<Integer> treeSet = new TreeSet<>();

        treeSet.add(30);
        treeSet.add(10);
        treeSet.add(20);
        treeSet.add(40);
        treeSet.add(50);

        System.out.println("TreeSet: " + treeSet);

        treeSet.remove(20);
        System.out.println("After removing 20: " + treeSet);

        System.out.println("First Element: " + treeSet.first());
        System.out.println("Last Element: " + treeSet.last());

        System.out.println("Iterating through the TreeSet:");
        for (int num : treeSet) {
            System.out.print(num + " ");
        }

        System.out.println("\nContains 30? " + treeSet.contains(30));
        System.out.println("Contains 25? " + treeSet.contains(25));
    }
}

