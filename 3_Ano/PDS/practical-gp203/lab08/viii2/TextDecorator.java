package viii2;
public class TextDecorator implements TextInterface {
    private TextInterface textInterface;
    public TextDecorator(TextInterface textInterface) {
        this.textInterface = textInterface;
    }
    public boolean hasNext() {
        return textInterface.hasNext();
    }
    public String next() {
        return textInterface.next();
    }
}