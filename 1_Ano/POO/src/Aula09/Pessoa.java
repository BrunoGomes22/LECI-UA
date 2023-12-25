package Aula09;
import Aula05.Date;

public class Pessoa {
    private String nome;
    private int cc;
    private Date dataNasc;

    public Pessoa(String nome, int cc, Date dataNasc){
        assert nome.length() > 1 && cc>0;
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;
    }

    public void set(String nome, int cc, Date dataNasc){
        assert nome.length() > 1 && cc>0;
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;
    }

    public String getNome(){
        return nome;
    }

    public int getCC(){
        return cc;
    }

    public Date getDate(){
        return dataNasc;
    }

    public String toString(){
        return String.format("%s; %d; Data de Nascimento: %s", nome,cc,dataNasc.toString()); 
    }
    
    
}

