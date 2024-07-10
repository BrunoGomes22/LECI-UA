package x3;

class Invoker {
    private Element command;

    public Invoker(Element command) {
        this.command = command;
    }

    public void setCommand(Element command) {
        this.command = command;
    }

    public void executeCommand() {
        command.execute();
    }

    public void undoCommand() {
        command.undo();
    }
}