package xI1;


public class Produto{
    private int code;
    private String description;
    private double basePrice;
    private State state;
    private double biggestBid;
    private Cliente winningClient;

    public Produto(int code, String description, double basePrice){
        this.code = code;
        this.description = description;
        this.basePrice = basePrice;
        this.state = State.STOCK;
        this.biggestBid = 0.0;
        this.winningClient = null;
    }

    public void setPrice(double price){
        this.basePrice = price;
    }

    public double getBasePrice(){
        return this.basePrice;
    }

    public void setCode(int code){
        this.code = code;
    }

    public double getCode(){
        return code;
    }

    public void setDescription(String description){
        this.description = description;
    }

    public String getDescription(){
        return description;
    }

    public void setState(State state){
        this.state = state;
    }

    public State getState(){
        return this.state;
    }

    public double getBiggestBid(){
        return this.biggestBid;
    }

    public Cliente getWinningClient(){
        return this.winningClient;
    }

    public void setWinningClinet(Cliente winningClient){
        this.winningClient = winningClient;
    }

    public void setBiggestBid(double biggestBid){
        this.biggestBid = biggestBid;
    }

    @Override
    public String toString() {
        return "Produto{" +
                "codigo='" + code + '\'' +
                ", descricao='" + description + '\'' +
                ", precoBase=" + basePrice +
                ", estado='" + state + '\'' +
                ", biggestBid=" + biggestBid +
                ", clienteVencedor=" + (winningClient != null ? winningClient.getName() : "Nenhum") +
                '}';
    }

}