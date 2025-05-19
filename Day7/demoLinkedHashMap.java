import java.util.LinkedHashMap;
import java.util.Map;

public class demoLinkedHashMap {
    public static void main(String[] args) {
        LinkedHashMap<String, Integer> linkedHashMap = new LinkedHashMap<>();

        linkedHashMap.put("Apple", 1);
        linkedHashMap.put("Banana", 2);
        linkedHashMap.put("Cherry", 3);
        linkedHashMap.put("Date", 4);

        System.out.println("Size: " + linkedHashMap.size());
        System.out.println("Contains key 'Banana'? " + linkedHashMap.containsKey("Banana"));
        System.out.println("Value for key 'Cherry': " + linkedHashMap.get("Cherry"));

        linkedHashMap.remove("Date");
        System.out.println("After removing 'Date': " + linkedHashMap);

        System.out.println("Is empty? " + linkedHashMap.isEmpty());

        linkedHashMap.put("Elderberry", 5);
        System.out.println("All elements: " + linkedHashMap);

        linkedHashMap.clear();
        System.out.println("Is empty after clear? " + linkedHashMap.isEmpty());

        linkedHashMap.put("Fig", 6);
        linkedHashMap.put("Grape", 7);
        System.out.println("All elements after adding again: " + linkedHashMap);
    }
}
