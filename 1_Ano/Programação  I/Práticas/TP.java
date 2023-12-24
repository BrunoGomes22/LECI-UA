import java.util.Scanner;

public class TP
{
	public static Scanner sc = new Scanner(System.in);

  public static void main(String[] args){

    Scanner sc = new Scanner(System.in);

    double p = 0;

    int n = 0; 

    double c = sc.nextDouble();

    int d = sc.nextInt();

    if (c > 0.0 && d > 0){

      p++;

    }

    else if (c < 10 && d < 0){

      n++; 

    }

    else{

      p = -1.0;

      n = -1;

    }

    System.out.printf("res1:%3.1f\n", p);

    System.out.printf("res2:%d", n);

  } 

 }


