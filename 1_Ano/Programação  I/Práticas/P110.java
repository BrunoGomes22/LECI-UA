import java.util.Scanner;

public class P110
{
  public static void main(String[] args)
  {
    // Scanner para leitura de dados do teclado
    Scanner sc = new Scanner(System.in);
    double celsius = 22.0, farn;       // Variaveis de Entrada
   
    // 1) Ler os dados (sem validar, por enquanto)
    System.out.print("graus Celcius : ");
    celsius = sc.nextDouble();
  
    // 2) Calcular
   farn = celsius * 1.8 + 32.;

    // 3) Escrever os resultados
    System.out.printf("%4.1f graus Celsius  = %4.1f graus Farnhn", celsius, farn);
  }
}
