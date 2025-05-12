class College {
    String collegeName = "";

    static class Departments {
        int noOfDept;

        public void displayNoOfDept() {
            System.out.println(noOfDept);
        }
    }
}

class DemoStaticInner {
    public static void main(String[] args) {
        College.Departments dep = new College.Departments();
        dep.noOfDept = 10;
        dep.displayNoOfDept();
    }
}
