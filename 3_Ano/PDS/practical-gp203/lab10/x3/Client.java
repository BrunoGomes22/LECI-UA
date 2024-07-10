package x3;

class Client {
    public static void main(String[] args) {
        Receiver<String> receiver = new Receiver<>();

        AddElement<String> addCommand = new AddElement<>(receiver, "Hello");
        RemoveElement<String> removeCommand = new RemoveElement<>(receiver, "Hello");

        Invoker invoker = new Invoker(addCommand);
        invoker.executeCommand(); 
        invoker.setCommand(removeCommand);
        invoker.executeCommand();  
    }
}