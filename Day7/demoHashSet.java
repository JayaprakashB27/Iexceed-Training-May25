import java.util.HashSet;

public class demoHashSet {
    public static void main(String[] args) {
        HashSet<String> hashSet = new HashSet<>();

        hashSet.add("Apple");
        hashSet.add("Banana");
        hashSet.add("Cherry");
        hashSet.add("Date");

        System.out.println("Size: " + hashSet.size());
        System.out.println("Contains Banana? " + hashSet.contains("Banana"));
        hashSet.remove("Cherry");
        System.out.println("After removing Cherry: " + hashSet);
        System.out.println("Is empty? " + hashSet.isEmpty());
        
        hashSet.add("Elderberry");
        hashSet.add("Fig");
        hashSet.add("Grape");
        
        System.out.println("All elements: " + hashSet);
        hashSet.clear();
        System.out.println("Is empty after clear? " + hashSet.isEmpty());
        
        hashSet.add("Apple");
        hashSet.add("Banana");
        hashSet.add("Cherry");
        
        System.out.println("Contains all? " + hashSet.containsAll(java.util.Arrays.asList("Apple", "Banana")));
        System.out.println("HashCode: " + hashSet.hashCode());
        hashSet.removeAll(java.util.Arrays.asList("Apple"));
        System.out.println("After removeAll: " + hashSet);
        hashSet.retainAll(java.util.Arrays.asList("Banana", "Cherry"));
        System.out.println("After retainAll: " + hashSet);
    }
}
