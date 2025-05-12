

class table{
    int a = 1944;
    int b = 4373;
    void checkIf(){
    if(a>b){
        System.out.println(a+" is greater than "+b);
    }
    else if(a<b){
        System.out.println(b+" is greater than "+a);
    }
    else{
        System.out.println(b+" is equal to "+a);
    }
 }
}
    public class demoif {
    public static void main(String[] args) {
        table t  = new table();
        t.checkIf();
    }
}
