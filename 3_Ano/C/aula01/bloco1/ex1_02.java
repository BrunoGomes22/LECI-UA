import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;

public class ex1_02 {
    static Map<String, Double> variables = new HashMap<>();

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while(true){
            String operacao = sc.nextLine();
            if(operacao.contains("=")){
                
            }
            calculate(operacao);
        }
        

    }

    public static void calculate(String operacao) {
        String[] comps = operacao.split(" ");

        String op = comps[1];

        double num1 = Double.parseDouble(comps[0]); //cast string para double
        double num2 = Double.parseDouble(comps[2]);

        switch(op){
            case "+":
                System.out.println(num1 + " + " + num2 + " = " + (num1 + num2));
                break;
            case "-":
                System.out.println(num1 + " - " + num2 + " = " + (num1 - num2));
                break;
            case "*":
                System.out.println(num1 + " * " + num2 + " = " + (num1 * num2));
                break;
            case "/":
                System.out.println(num1 + " / " + num2 + " = " + (num1 / num2));
                break;
        }
        
    }



   
}