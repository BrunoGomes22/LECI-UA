package EP1;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AgenciaTuristica {
    private String nome;
    private String endereco;
    private Set<PacoteTuristico> pacoteTuristico;
    private List<Reserva> listaDeReservas; 

    public AgenciaTuristica(String nome, String endereco){
        this.nome = nome;
        this.endereco = endereco;
        this.pacoteTuristico = new HashSet<PacoteTuristico>();
        this.listaDeReservas = new ArrayList<Reserva>();
    }

    public String getNome(){
        return this.nome;
    }

    public String getEndereco(){
        return this.endereco;
    }

    public Set<PacoteTuristico> getPacoteTuristico(){
        return this.pacoteTuristico;
    }

    public ArrayList<Reserva> getListaDeReservas(){
        return this.listaDeReservas;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public void setEndereco(String endereco){
        this.endereco = endereco;
    }

    public void setPacoteTuristico(Set<PacoteTuristico> pacoteTuristico){
        this.pacoteTuristico = pacoteTuristico;
    }

    public void setListaDeReservas(List<Reserva> listaDeReservas){
        this.listaDeReservas = listaDeReservas;
    }

    public PacoteTuristico pacoteTuristico(String nome, int numNoites, double precoPorPessoa){
        PacoteTuristico pacote = new PacoteTuristico(nome, numNoites, precoPorPessoa);
        this.pacoteTuristico.add(pacote);
    }

    public double reserva(PacoteTuristico pacote, int numPessoas){
        return numPessoas*pacote.getPrecoPorPessoa();
    }

}
