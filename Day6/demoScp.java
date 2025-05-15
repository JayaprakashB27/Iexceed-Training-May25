public class demoScp {
    public static void main(String[] args) {
        String s1 = "jp";
        String s2 = "jp";
        String s3 = new String("jp");
        System.out.println(s1.equals(s2));     // true
        System.out.println(s2.equals(s1));     // true
        System.out.println(s1.equals(s3));      // true
        System.out.println(s2.equals(s3));      // true

        System.out.println(s1==s2);    // true
        System.out.println(s2==s3);     // false
        System.out.println(s1==s3);     // fasle

        String s4 = new String("jp").intern();
        String s5 = new String("jp");
        System.out.println(s1==s4);     // true
        System.out.println(s2==s4);     // true
        System.out.println(s3==s4);     // false
        System.out.println(s5==s4);     // false




    }
}
