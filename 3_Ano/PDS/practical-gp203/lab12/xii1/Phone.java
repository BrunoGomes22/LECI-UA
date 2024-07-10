package xii1;

public class Phone{
    private String processor;
    private double price;
    private double memory;
    private double camera;

    public Phone(String processor, double price, double memory, double camera){
        this.processor = processor;
        this.price = price;
        this.memory = memory;
        this.camera = camera;
    }

    public String getProcessor(){
        return this.processor;
    }

    public double getPrice(){
        return this.price;
    }

    public double getMemory(){
        return this.memory;
    }

    public double getCamera(){
        return this.camera;
    }
}