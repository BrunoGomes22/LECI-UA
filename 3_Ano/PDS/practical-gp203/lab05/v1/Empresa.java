package v1;

import java.util.ArrayList;

public class Empresa {
    private String nome;
    private String codigoPostal;
    private String email;
    private ArrayList<Veiculo> veiculos;

    public Empresa(String nome, String codigoPostal, String email){ //construtor para criar uma lista nova
        this.nome = nome;
        this.codigoPostal = codigoPostal;
        this.email = email;
        veiculos = new ArrayList<Veiculo>();
    }

    public Empresa(String nome, String codigoPostal, String email, ArrayList<Veiculo> veiculos){ //construtor para inserir lista já existente
        this.nome = nome;
        this.codigoPostal = codigoPostal;
        this.email = email;
        this.veiculos = veiculos;
    }

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public String getCodigoPostal(){
        return codigoPostal;
    }

    public void setCodigoPostal(String codigoPostal){
        this.codigoPostal = codigoPostal;
    }

    public String getEmail(){
        return email;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public ArrayList<Veiculo> getVeiculosList(){
        return veiculos;
    }

    public void setVeiculosList(ArrayList<Veiculo> veiculos){
        this.veiculos = veiculos;
    }

    public void addVeiculo(Veiculo veiculo){
        this.veiculos.add(veiculo);
    }

    public String toString() {
        return "Empresa [codigoPostal=" + codigoPostal + ", email=" + email + ", nome=" + nome + ", viaturas="
                + veiculos + "]";
    }
}
