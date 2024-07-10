package xI1;

public class Cliente implements Subscriber{
    private String name;

    public Cliente(String name){
        this.name = name;
    }

    public String getName(){
        return this.name;
    }

    public void licitar(Produto produto, double licitacao, Leilao leilao){
        leilao.adicionarLicitacao(produto, licitacao, this);
    }

    public void update(String message){
        System.out.println("Cliente " + this.name + " recebeu a mensagem: " + message);
    }
}
