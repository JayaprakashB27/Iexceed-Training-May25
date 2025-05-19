import java.util.LinkedList;

public class demoLinkedList {
    public static void main(String[] args) {
        LinkedList<Integer> list = new LinkedList<>();

        list.add(10);
        list.add(20);
        list.add(30);
        list.addFirst(5);
        list.addLast(40);

        System.out.println("Linked List: " + list);

        list.remove(Integer.valueOf(20));
        System.out.println("After removing 20: " + list);

        int firstElement = list.getFirst();
        int lastElement = list.getLast();
        System.out.println("First Element: " + firstElement);
        System.out.println("Last Element: " + lastElement);

        System.out.println("Iterating through the list:");
        for (int num : list) {
            System.out.print(num + " ");
        }
    }
}