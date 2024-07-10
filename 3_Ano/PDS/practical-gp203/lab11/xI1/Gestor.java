package xI1;

public class Gestor implements Subscriber{
    private String name;

    public Gestor(String name){
        this.name = name;
    }

    public String getName(){
        return this.name;
    }

    public void update(String message){
        System.out.println("Gestor " + this.name + " recebeu a mensagem: " + message);
    }
}
