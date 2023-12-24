import java.util.Scanner;

public class TestaHora {
  static final Scanner sc = new Scanner(System.in);
  
  public static void main(String[] args) {
    Hora inicio;  // tem de definir o novo tipo Hora!
    Hora fim;
    
    inicio = new Hora();
    inicio.h = 9;
    inicio.m = 23;
    inicio.s = 5;
    
    System.out.print("Começou às ");
    printHora(inicio);  // crie esta função!
    System.out.println(".");
    System.out.println("Quando termina?");
    fim = lerHora();  // crie esta função!
    System.out.print("Início: ");
    printHora(inicio);
    System.out.print(" Fim: ");
    printHora(fim);
  }
  public static void  printHora(Hora x){
	  System.out.printf(" %2d:%2d:%2d",x.h, x.m ,x.s);
  }
  public static Hora lerHora(){
	  Scanner sc = new Scanner(System.in);
	  Hora a = new Hora();
	  int k = -1;
	  while(k<0 || k>23){
		System.out.print("horas? ");
		k = sc.nextInt();
      }
	  a.h = k;
	  k = -1;
	  while(k<0 || k>59){
		  System.out.print("minutos? ");
		  k = sc.nextInt();
	  }
	  a.m = k;
	  k = -1;
	  while(k<0 || k>59){
		System.out.print("segundos? ");
		k = sc.nextInt();
	}
	  a.s = k;
	  return a;
	}
}
 class Hora {
	 public int h, m, s;
	}

/**
EXEMPLO do pretendido:
$ java TestaHora
Começou às 09:23:05.
Quando termina?
horas? 11
minutos? 72
minutos? 7
segundos? 2
Início: 09:23:05 Fim: 11:07:02.
**/
