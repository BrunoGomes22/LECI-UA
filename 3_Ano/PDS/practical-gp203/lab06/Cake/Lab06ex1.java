 // to complete
 // CakeBuiler é uma interface
 // ChocolateCakeBuilder() é uma classe
 // cakeMaster é uma classe (é tipo o cozinheiro que pega na receita e faz o bolo)
 package Cake;

 public class Lab06ex1 {
    public static void main(String[] args) {
        CakeMaster cakeMaster = new CakeMaster();

        CakeBuilder chocolate = new ChocolateCakeBuilder();
        cakeMaster.setCakeBuilder(chocolate);
        cakeMaster.createCake("Congratulations");       // 1 cake layer
        Cake cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);
        
         
        CakeBuilder sponge = new SpongeCakeBuilder();
        cakeMaster.setCakeBuilder(sponge);
        cakeMaster.createCake(Shape.SQUARE, 2, "Well done");    // squared, 2 layers
        cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);
        
        CakeBuilder yogurt = new YogurtCakeBuilder();
        cakeMaster.setCakeBuilder(yogurt);
        cakeMaster.createCake(3, "The best");           // 3 cake layers
        cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);
        
        // you should add here other example(s) of CakeBuilder
        CakeBuilder cookie = new CookieCakeBuilder();
        cakeMaster.setCakeBuilder(cookie);
        cakeMaster.createCake(Shape.TRIANGULAR,5, "Sweetness overload");
        cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);

        CakeBuilder marble = new MarbleCakeBuilder();
        cakeMaster.setCakeBuilder(marble);
        cakeMaster.createCake(Shape.OVAL, 2, "Delicious");
        cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);
    }
}
