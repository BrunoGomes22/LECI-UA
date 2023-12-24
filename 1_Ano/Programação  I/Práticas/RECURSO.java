import java.util.Scanner;
import java.lang.Character;
import java.io.*;


public class RECURSO{
	static Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args){
		System.out.println(validaNome("Bruno Gomes"));
		Aluno a;
		final int NUM_ALUNOS = 10;
		Aluno[] t = new Aluno[NUM_ALUNOS];
	
		
	}
	
	static boolean validaNome(String s){
		boolean resultado = false;
		boolean haVogal = false;
		boolean haConsoante = false;
		
		for(int i=0;i<s.length();i++){
			if(!Character.isLetter(s.charAt(i)) && !Character.isWhitespace(s.charAt(i))){
				return false;
			}
			if(s.charAt(i)=='a' || s.charAt(i)=='e' || s.charAt(i)=='i' || s.charAt(i)=='o' || s.charAt(i)=='u'){
				haVogal = true;
			}
			else if(!Character.isWhitespace(s.charAt(i))){
				haConsoante = true;
			}
 		}
		if(haVogal && haConsoante) {
			resultado = true;
		}
		else{
			resultado = false;
		}
		
		return resultado;
	}
	
	static int [] histograma(Aluno[] a, int num){
		int hist[] = new int [7];
		for(Aluno e  : a){
			
			if (e.nota>= 0 && e.nota <= 5)
			   hist[e.nota]+= 1; 
			 else
			    hist[6] +=1;  
			
		}
		return hist;
	}
	
	
	static int lerTurma(Aluno[] t, int num){
		Aluno a = null;
		int id =0;
		do{
		a = lerAluno();
		if (a.id != 0){
			t[num] = a;
			num++;
		}
		}while(a.id!=0 && num<t.length);
		
		return num;
		
	}
	
	static Aluno lerAluno(){
		boolean dadosInvalidos = false;
		int nota = 0;
		int id = 0;
		String[] dados;
		do{	
			System.out.println("Insira o id o nome e a nota: ");
			String linha = sc.nextLine();
			dados = linha.split(" ");
			id = Integer.parseInt(dados[0]);
			if(id == 0){
				break;
			}
			nota = Integer.parseInt(dados[2]);
			if(nota<-1 || nota>5){
				dadosInvalidos = true;
			}
			if(!validaNome(dados[1])){
				dadosInvalidos = true;
			}
		}while(dadosInvalidos);
		
	   
		return new Aluno(id,dados[1], nota);
	}
	
	static String alunoToString(Aluno a) {
		String resultado = "  ";
		String erros = "e";
		if (!validaNome(a.nome)) erros+= "1";
		if(a.nota<-1 || a.nota>5)erros = erros + "2";
		resultado = String.format("%-4s %5d %-15s %d ", erros, a.id, a.nome, a.nota);
		return resultado;
	}
	
	static void filtrarTurma(Aluno[] t, int n, String nomeF) throws IOException {
		File fich = new File(nomeF);
		PrintWriter f = new PrintWriter(fich);
		for(Aluno e : t){
			String linha = alunoToString(e);
			
			char c = linha.charAt(1);
			if(c == ' ' ){

				f.println(linha);
			}
		}
		f.close();
	}
	
	static void ordenarTurma(Aluno[] turma, int numAlunos){
		Aluno tmp;
		boolean trocas = false;
		int nlo =  0;
		do{
			trocas = false;
			for(int i = 0; i<numAlunos-1-nlo; i++){
				
				if(turma[i].nome.compareTo(turma[i+1].nome) > 0 ){	
					tmp = turma[i];
					turma[i] = turma[i+1];
					turma[i+1] = tmp;
					trocas = true;				
				}
			}
			nlo ++;
			
		}while (trocas);
	}
	
	static Aluno[] lerTurmaFich(String nomeF) throws IOException{
		Aluno[] alunos = new Aluno[10];
		File fich = new File(nomeF);
		Scanner sc = new Scanner(fich);
		int index = 0;
		while(sc.hasNextLine()){
			String linha = sc.nextLine();
			String dados[] = linha.split(" ");
			int id = Integer.parseInt(dados[0]);
			int nota = Integer.parseInt(dados[2]);
			alunos[index] = new Aluno(id, dados[1], nota);
			index++;
		}
		sc.close();
		return alunos;
	}
}
