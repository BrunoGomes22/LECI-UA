import java.util.Scanner;

class main{
	
	public static void main (String args[]){
		
		Scanner sc = new Scanner(System.in);
		/* AS classes funcionam como tipos de dados */
		
		Automovel carroBruno = new Automovel("Nissan", 100000, "Cinzento");
		
		System.out.println(carroBruno.getCor());
		System.out.println(carroBruno.getKms());
		System.out.println(carroBruno.getMarca());
		
		Automovel carroFatima = new Automovel("Opem",145000);
		
		System.out.println(carroFatima.getKms());
		System.out.println(carroFatima.getMarca());
		
		System.out.println("Quilometros percorridos?");
		int x = sc.nextInt();
		sc.nextLine();
		carroBruno.circular(x);
		System.out.println(carroBruno.getKms());
		
		System.out.println("Cor nova?");
		String pinturaNova = sc.nextLine();
		carroBruno.pintar(pinturaNova);
		System.out.print(carroBruno.getCor());
		
		int numAuto = Automovel.getNumeroAutomoveis();
		
		
		sc.close();
	}
}
