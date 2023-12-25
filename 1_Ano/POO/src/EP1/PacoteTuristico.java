package EP1;

import java.util.Collection;

public class PacoteTuristico implements IPacoteTuristico{
    private String nome;
    private int numNoites;
    private double precoPorPessoa;

    public PacoteTuristico(String nome, int numNoites, double precoPorPessoa){
        this.nome = nome;
        this.numNoites = numNoites;
        this.precoPorPessoa = precoPorPessoa;
    }

    public String getNome(){
        return this.nome;
    }

    public int getNumNoites(){
        return this.numNoites;
    }

    public double getPrecoPorPessoa(){
        return this.precoPorPessoa;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public void setNumNoites(int numNoites){
        this.numNoites = numNoites;
    }

    public void setPrecoPorPessoa(double precoPorPessoa){
        this.precoPorPessoa = precoPorPessoa;
    }

    public PacoteTuristico adicionaServico(Servico servico){ //acabar
        return null;
    }

    public Collection<String> listaServicos(){ //acabar
        return null;
    }

    public int precoTotal(int numPessoas){ //acabar
        return 0;
    }
}
