package x3;
class RemoveElement<E> implements Element {
    private Receiver<E> receiver;
    private E element;

    public RemoveElement(Receiver<E> receiver, E element) {
        this.receiver = receiver;
        this.element = element;
    }

    @Override
    public void execute() {
        receiver.removeElement(element);
    }

    @Override
    public void undo() {
        receiver.addElement(element);
    }
}