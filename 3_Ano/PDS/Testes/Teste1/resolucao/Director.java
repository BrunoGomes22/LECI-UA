public class Director extends Monitor {
    private Course degreeName;

    public Director(StudentAdm stud, Course degree) throws Exception {
        this.degreeName = degree;
        if (stud.getStudent().getCourse() != degree) {
            throw new Exception("Director's course must be the same as student's course");
        }
        this.adm = stud;
        this.adm.subscribe(this);
    }

    public Course getCourseName() {
        return degreeName;
    }

    public void update(StudentAdm s) {
        System.out.printf("%s director reports that student %s (%d) has changed the overwall grade: %.1f\n",
                this.degreeName,
                s.getStudent().getName(),
                s.getStudent().getId(),
                s.getStudent().getOverallGrade());
    }

}
