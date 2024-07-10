package viii2;
public class TermFilter extends TextDecorator {
    private String[] words;
    private int index;

    public TermFilter(TextInterface textInterface) {
        super(textInterface);
        this.words = new String[0];
        this.index = 0;
    }

    public boolean hasNext() {
        if (index < words.length) {
            return true;
        }
        if (super.hasNext()) {
            words = super.next().split("\\s+");
            index = 0;
            return hasNext();
        }
        return false;
    }

    public String next() {
        if (!hasNext()) {
            return null;
        }
        return words[index++];
    }
}