class Arr{
    int ages[] = {43,67,89,4,6,23,56,9,23,5,64,48,24,67,98,21,67,21,43,56,21,23,64,76,12,31,63,47,92};
    public void disp(){
        System.out.println("by for loop...");
        for(int i=0;i<ages.length;i++){
            if(ages[i]>18 && ages[i]<45){
                System.out.print(ages[i]+" ");
            }
        }
    System.out.println("\nby while loop...");
 
    int count = ages.length-1;
    while(count >= 0){
        if(ages[count]>18 && ages[count]<45){
          System.out.print(ages[count]+" ");
        }
        count--;
    }

    System.out.println("\nby do while loop...");
    int coun= ages.length-1;
    do{
        if(ages[coun]>18 && ages[coun]<45){
          System.out.print(ages[coun]+" ");
        }
        coun--;
    }while(coun >= 0);

    System.out.println("\nby forEach loop...");
    for(int i : ages){
        if(i >18 && i <45){
            System.out.print(i+" ");
    }
}



}
}
public class demofor {
    public static void main(String[] args) {
        Arr x = new Arr();
        x.disp();
    }
}
