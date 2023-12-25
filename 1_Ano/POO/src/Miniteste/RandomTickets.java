package Miniteste;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class RandomTickets {
    private String nome;
    private String local;
    private int nBilhete;
    private Pessoa pessoa;

    public RandomTickets(String nome, String local, int nBilhete, Pessoa pessoa){
        nome = this.nome;
        local = this.local;
        nBilhete = this.nBilhete;
        pessoa = this.pessoa;
    }

    public RandomTickets(){

    }

    
    public void setNome(String nome){
        this.nome = nome;
    }

    public void setLocal(String local){
        this.local = local;
    }

    public void setnBilhete(int nBilhete){
        this.nBilhete = nBilhete;
    }

    public void setPessoa(Pessoa pessoa){
        this.pessoa = pessoa;
    }

    public String getNome(){
        return nome;
    }

    public String getLocal(){
        return local;
    }

    public int getnBilhete(){
        return nBilhete;
    }

    public Pessoa getPessoa(){
        return pessoa;
    }

    public String getRandomTicket(Pessoa escolhida) throws IOException{
        Scanner input = new Scanner(new File("src/Miniteste/Lista_festivais.txt"));
        String str = "";
        while(input.hasNext()){
            str += input.next();
            
        }
        return str;
    }
}
