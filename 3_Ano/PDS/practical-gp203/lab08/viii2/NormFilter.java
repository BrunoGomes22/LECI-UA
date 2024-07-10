package viii2;
import java.text.Normalizer;

public class NormFilter extends TextDecorator {
    public NormFilter(TextInterface textInterface) {
        super(textInterface);
    }

    public boolean hasNext() {
        return super.hasNext();
    }

    public String next() {
        String text = super.next();
        text = Normalizer.normalize(text, Normalizer.Form.NFD);
        text = text.replaceAll("[^\\p{ASCII}]", "");
        return text;
    }
}