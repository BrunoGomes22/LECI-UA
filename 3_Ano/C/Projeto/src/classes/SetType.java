package classes;
import java.util.Set;

public class SetType extends SetLangType{
    private Set<SetLangType> elements;

    public SetType(Set<SetLangType> elements){
        this.elements = elements;
    }

    public Set<SetLangType> getElements(){
        return elements;
    }

    @Override
    public String getTypeName() {
        return "set<" + (elements.isEmpty() ? "?" : elements.iterator().next().getTypeName()) + ">";
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder("{");
        boolean first = true;
        for (SetLangType element : elements) {
            if (!first) {
                sb.append(", ");
            }
            first = false;
            sb.append(element.toString());
        }
        sb.append("}");
        return sb.toString();
    }
}
