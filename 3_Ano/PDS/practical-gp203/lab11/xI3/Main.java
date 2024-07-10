package xI3;

public class Main {
    public static void main(String[] args) {
        UNSecurityCouncil mediator = new UNSecurityCouncil();
        Country china = new China(mediator);
        Country russia = new Russia(mediator);
        Country usa = new USA(mediator);

        mediator.setChina((China) china);
        mediator.setRussia((Russia) russia);
        mediator.setUsa((USA) usa);
        
        china.sendMessage("I am China");
        russia.sendMessage("I am Russia");
        usa.sendMessage("I am USA");
    }
}
