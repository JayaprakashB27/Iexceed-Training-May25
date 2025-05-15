public class demoStringLiteral {
    public static void main(String[] args) {
        String s = "Jayaprakash";
        System.out.println("s.hashCode()"+s.hashCode());
        System.out.println("s.charAt(4)"+s.charAt(4));
        System.out.println("s.codePointAt(4)"+s.codePointAt(4));
        System.out.println(s.compareTo("jayaprakash"));
        System.out.println(s.compareToIgnoreCase("jayaprakash"));
        System.out.println(s.concat("B"));
        System.out.println(s.contains("sh"));
        System.out.println(s.equals("Jayaprakash"));
        System.out.println(s.replace("ya", "va"));
        System.out.println(s.split("a"));
        System.out.println(s.trim());
        System.out.println(s.replaceAll("a", "A"));
        System.out.println(s.length()); 
        System.out.println(s.indexOf("p"));
        System.out.println(s.indexOf(7));
        System.out.println(s.indexOf(4, 0));
        System.out.println(s.toUpperCase());
        System.out.println(s.toLowerCase());
        System.out.println(s.lastIndexOf("s"));
        System.out.println(s.isEmpty());
        System.out.println(s.indent(2));
        

        String s1 = "       Jayaprakash         ";
        System.out.println(s.strip());
        System.out.println(s.stripLeading());
        System.out.println(s.stripTrailing());
    }
}
