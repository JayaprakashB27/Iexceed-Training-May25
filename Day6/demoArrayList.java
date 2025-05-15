import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public class demoArrayList {
    public static void main(String[] args) {

        System.out.println("Start time "+System.nanoTime());

        ArrayList<Integer> al = new ArrayList<>();
        al.add(543);
        al.add(43);
        al.add(253);
        al.add(83);
        al.add(655);
        al.add(129);
        System.out.println(al.size());
        System.out.println(al);
        System.out.println(al.get(4));
        System.out.println(al.remove(3));
        System.out.println(al);
        System.out.println(al.set(2,76523));
        System.out.println(al);
        System.out.println(al.contains(655));
        System.out.println(al);
        System.out.println(al.indexOf(43)); // reyurns index of their value .
        System.out.println(al.isEmpty());
        System.out.println(al.remove(1));
        System.out.println(al);
        System.out.println(al.toString());
        System.out.println(al);
        System.out.println(al.toArray());
        System.out.println(al.clone());
        System.out.println(al);



        ArrayList<Integer> bl = new ArrayList<>();
        bl.add(91);
        bl.add(78);
        bl.add(23);
        bl.add(65);
        bl.add(39);
        
        al.addAll(bl);
        System.out.println(al);
        Collections.sort(al);
        System.out.println(al);

        System.out.println("_---------------------------_");

        Iterator<Integer> itr = al.iterator();
        while(itr.hasNext()){
            System.out.println(itr.next());
        }
        System.out.println("_---------------------------_");
        for(int i : al){
            System.out.println(i);
        }
        System.out.println("End time "+System.nanoTime());
    }
}
