package viii2;
public class CapitalizationFilter extends TextDecorator {
    public CapitalizationFilter(TextInterface textInterface) {
        super(textInterface);
    }

    public boolean hasNext() {
        return super.hasNext();
    }

    public String next() {
        String text = super.next();
        if (text.length() > 1) {
            return text.substring(0, 1).toUpperCase() 
                + text.substring(1, text.length() - 1).toLowerCase()
                + text.substring(text.length() - 1).toUpperCase();
        } else if (text.length() == 1) {
            return text.toUpperCase();
        } else {
            return text;
        }
    }
}