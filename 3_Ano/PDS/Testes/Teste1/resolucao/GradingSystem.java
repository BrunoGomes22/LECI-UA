import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

// GradingSystem class
public class GradingSystem {
    List<StudentAdm> studentsAdm = new ArrayList<>();
    List<Professor> profes = new ArrayList<>();
    List<Director> directs = new ArrayList<>();

    // Add a student to the system
    // The director of student's course is added as Monitor
    public StudentAdm addStudent(Student student) {
        StudentAdm studentAdm = new StudentAdm(student);
        studentsAdm.add(studentAdm);
        return studentAdm;
    }

    // Add a director to the system
    // The director is added as monitor of the students in the same course
    public void addDirector(Course course) {
        for (StudentAdm studentAdm : studentsAdm) {
            if (studentAdm.getStudent().getCourse() == course) {
                try {
                    Director d = new Director(studentAdm, course);
                    directs.add(d);
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
        }
    }

    public void addProfessor(Professor professor) {
        profes.add(professor);
    }

    public List<Director> getDirectors() {
        return directs;
    }

    public List<Professor> getProfessors() {
        return profes;
    }

    public Iterator<StudentAdm> iterator(Course c) {
        return new StudentIterator<>(c);
    }

    private class StudentIterator<K> implements Iterator<K> {
        private int index;
        private List<StudentAdm> students;

        StudentIterator(Course c) {
            index = 0;
            students = new ArrayList<>();
            for (StudentAdm s : studentsAdm) {
                if (s.getStudent().getCourse() == c) {
                    students.add(s);
                }
            }
        }

        @Override
        public boolean hasNext() {
            return (index < students.size());
        }

        @Override
        public K next() {
            if (hasNext())
                return (K) this.students.get(index++);
            throw new NoSuchElementException("only " + students.size() + " elements");
        }

    }

}