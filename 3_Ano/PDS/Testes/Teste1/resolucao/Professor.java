public class Professor extends Monitor {
    private String className;
    private String name;

    public Professor(StudentAdm adm, String name, String className) {
        this.name = name;
        this.className = className;
        this.adm = adm;
        this.adm.subscribe(this);
    }

    public void update(StudentAdm s) {
        Double grade = s.getStudent().getScore(this.className);

        if (grade == null) {
            return;
        }

        System.out.printf("Professor %s of %s class evaluated student %s (%d) with score: %.1f\n",
                this.name,
                this.className,
                s.getStudent().getName(),
                s.getStudent().getId(),
                s.getStudent().getScore(this.className));
    }

    public String getName() {
        return name;
    }

    public String getClassName() {
        return className;
    }

}
