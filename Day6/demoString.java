class demoStringBuilder{
public static void main(String[] args) {
        StringBuilder sb = new StringBuilder("Hello");
        System.out.println("Original String: " + sb);
        sb.append(" World");
        System.out.println("After append(): " + sb);
        sb.appendCodePoint(33);
        System.out.println("After appendCodePoint(): " + sb);
        System.out.println("Capacity: " + sb.capacity());
        System.out.println("Character at index 0: " + sb.charAt(0));
        System.out.println("Code point at index 0: " + sb.codePointAt(0));
        System.out.println("Code point before index 0: " + sb.codePointBefore(4));
        System.out.println("Code point count: " + sb.codePointCount(0, sb.length()));
        sb.delete(6, 11);
        System.out.println("After delete(): " + sb);
        sb.deleteCharAt(5);
        System.out.println("After deleteCharAt(): " + sb);
        sb.ensureCapacity(20);
        System.out.println("Capacity after ensureCapacity(): " + sb.capacity());
        char[] chars = new char[sb.length()];
        sb.getChars(0, sb.length(), chars, 0);
        System.out.println("Characters: " + new String(chars));
        System.out.println("Index of 'l': " + sb.indexOf("l"));
        sb.insert(0, "New ");
        System.out.println("After insert(): " + sb);
        System.out.println("Last index of 'l': " + sb.lastIndexOf("l"));
        System.out.println("Length: " + sb.length());
        System.out.println("Offset by code points: " + sb.offsetByCodePoints(0, 2));
        sb.replace(4, 7, "Old");
        System.out.println("After replace(): " + sb);
        sb.reverse();
        System.out.println("After reverse(): " + sb);
        sb.setCharAt(0, 'N');
        System.out.println("After setCharAt(): " + sb);
        sb.setLength(10);
        System.out.println("After setLength(): " + sb);
        System.out.println("Subsequence: " + sb.subSequence(0, 5));
        System.out.println("Substring: " + sb.substring(0, 5));
        System.out.println("String: " + sb.toString());
    }
}
