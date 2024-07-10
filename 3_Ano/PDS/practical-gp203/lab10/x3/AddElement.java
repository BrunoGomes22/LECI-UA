package x3;
class AddElement<E> implements Element {
    private Receiver<E> receiver;
    private E element;

    public AddElement(Receiver<E> receiver, E element) {
        this.receiver = receiver;
        this.element = element;
    }

    @Override
    public void execute() {
        receiver.addElement(element);
    }

    @Override
    public void undo() {
        receiver.removeElement(element);
    }
}
