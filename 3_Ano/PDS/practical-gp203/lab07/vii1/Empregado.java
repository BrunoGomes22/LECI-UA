package vii1;

// Petiscos
public class Empregado {
    private String nome;
    private String apelido;
    private int codigo;
    private double salario;

    public Empregado(String nome, String apelido, int codigo, double salario) {
        this.nome = nome;
        this.apelido = apelido;
        this.codigo = codigo;
        this.salario = salario;
    }

    public String apelido() {
        return apelido;
    }

    public String nome() {
        return nome;
    }

    public int codigo() {
        return codigo;
    }

    public double salario() {
        return salario;
    }

    @Override
    public String toString(){
        return "Empregado{" +
        "nome='" + nome + '\'' +
        ", apelido=" + apelido +
        ", codigo=" + codigo +
        ", salario=" + salario +
        '}';
    }
}
