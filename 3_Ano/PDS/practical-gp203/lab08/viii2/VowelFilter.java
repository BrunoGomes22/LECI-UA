package viii2;

public class VowelFilter extends TextDecorator {
    public VowelFilter(TextInterface textInterface) {
        super(textInterface);
    }

    public boolean hasNext() {
        return super.hasNext();
    }

    public String next() {
        String text = super.next();
        return text.replaceAll("[aeiouAEIOU]", "");
    }
}