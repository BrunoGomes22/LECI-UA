package xI1;

public class Test {
    public static void main(String[] args){
        Leilao leilao = new Leilao();

        Produto produto1 = new Produto(0003 ,"HP Gaming Laptop", 2000.0);
        Produto produto2 = new Produto(0021 ,"Ford Focus RS 2016", 35000.0);
        Produto produto3 = new Produto(0111 ,"Scott Addict RC 30", 3100.0);
        Produto produto4 = new Produto(1111 ,"Famel Zundapp", 1500.0);
        Produto produto5 = new Produto(1234 ,"Samsung TV", 3500.0);

        Cliente cliente1 = new Cliente("Bruno Gomes");
        Cliente cliente2 = new Cliente("Xavier Rodrigues");
        Cliente cliente3 = new Cliente("Paulo Fonseca");

        Gestor gestor = new Gestor("Manuel da Silva Gomes");

        leilao.addSubscriber(cliente1);
        leilao.addSubscriber(cliente2);
        leilao.addSubscriber(cliente3);
        leilao.addSubscriber(gestor);

        System.out.println("<----------------------Produtos adicionados ao leilão------------------------------------>");

        leilao.addProduto(produto1);
        leilao.addProduto(produto2);
        leilao.addProduto(produto3);
        leilao.addProduto(produto4);
        leilao.addProduto(produto5);

        System.out.println("<------------------------------Licitações------------------------------------------------>");

        cliente1.licitar(produto1, 2100, leilao);
        cliente2.licitar(produto1, 2200, leilao);
        cliente3.licitar(produto2, 37000, leilao);
        cliente3.licitar(produto3, 3150, leilao);

        System.out.println("<----------------------------Vendas------------------------------------------------------>");
    }
}
