import java.util.Scanner;

class ex1_01 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Operation (number op number): ");
        String operacao = sc.nextLine();
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
        sc.close();
        
    }
}
