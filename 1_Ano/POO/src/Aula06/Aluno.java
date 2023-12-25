package Aula06;
import Aula05.Date;

public class Aluno extends Pessoa{

    private int nMec;
    private Date dataInsc;
    private static int nMecCounter = 100;

    public Aluno(String nome, int cc, Date dataNasc, Date dataInsc){
        super(nome, cc, dataNasc);
        this.dataInsc = dataInsc;
        this.nMec = nMecCounter++;

    }

    public Aluno(String nome, int cc, Date dataNasc){
        super(nome, cc, dataNasc);
        this.dataInsc = new Date(20,4,2020);
        this.nMec = nMecCounter++;
    }

    public int getNMec(){
        return nMec;
    }

    public Date getInscDate(){
        return dataInsc;
    }

    public String toString(){
        return String.format("%s; nMec: %d; dataInsc: %s",super.toString(), nMec, dataInsc);
    }
}
