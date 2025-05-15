public class demoStringBuffer {
    public static void main(String[] args) {
        StringBuffer sb = new StringBuffer("jayaprakash ");
        System.out.println(sb);              
        System.out.println(sb.append("jayaprakash"));   // 
        System.out.println(sb.codePointAt(3));     // 97
        System.out.println(sb.codePointBefore(3)); // 97
        System.out.println(sb.capacity());         // 16
        System.out.println(sb.charAt(5));
        System.out.println(sb.equals("jayaprakash"));
        System.out.println(sb.hashCode());    //
        System.out.println(sb.indexOf("j"));  
        System.out.println(sb.isEmpty());
        System.out.println(sb.lastIndexOf("p"));    // last index of p
        System.out.println(sb.length());
        System.out.println(sb.reverse());        // rev the strinh
        System.out.println(sb.deleteCharAt(5));   // removes the 5th index char
        System.out.println(sb.substring(4));      // returns the substring from 4th index to end
        System.out.println(sb);


    }
}
