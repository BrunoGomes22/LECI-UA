package EP1;

public class RoteiroGastronomico extends Servico{
    private String nome;
    private int numRestaurantes;

    public RoteiroGastronomico(String nome, int numRestaurantes){
        super("R");
        this.nome = nome;
        this.numRestaurantes = numRestaurantes;
    }

    public String getNome(){
        return this.nome;
    }

    public int getNumRestaurantes(){
        return this.numRestaurantes;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public void setNumRestaurantes(int numRestaurantes){
        this.numRestaurantes = numRestaurantes;
    }
}
