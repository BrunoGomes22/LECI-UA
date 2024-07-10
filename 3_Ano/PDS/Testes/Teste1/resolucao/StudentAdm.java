import java.util.ArrayList;
import java.util.List;

public class StudentAdm {
    private Student student;
    private List<Monitor> subscribers;

    public StudentAdm(Student s) {
        this.student = s;
        subscribers = new ArrayList<>();
    }

    public void addScore(String className, double score) {
        student.addScore(className, (Double) score);
        // notify subscribers
        for (Monitor subscriber : subscribers) {
            subscriber.update(this);
        }
    }

    public void subscribe(Monitor m) {
        subscribers.add(m);
    }

    public Student getStudent() {
        return student;
    }

    @Override
    public String toString() {
        return this.student.toString();
    }

}
