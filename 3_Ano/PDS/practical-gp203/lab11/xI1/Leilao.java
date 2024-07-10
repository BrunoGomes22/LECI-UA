package xI1;

import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class Leilao {
    private List<Produto> stockProdutos;
    private List<Subscriber> subscribers;

    public Leilao(){
        this.stockProdutos = new ArrayList<Produto>();
        this.subscribers = new ArrayList<Subscriber>();
    }

    public void addSubscriber(Subscriber s){
        subscribers.add(s);
    }

    public void removeSubscriber(Subscriber s){
        subscribers.remove(s);
    }

    public void addProduto(Produto p){
        stockProdutos.add(p);
        p.setState(State.LEILAO);
        notifySubscribers("Produto adicionado ao leilão: " + p.getDescription());

        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                finalizarLeilao(p);
            }

        }, 10000); // simulacao de 10 segundos
    }

    public void adicionarLicitacao(Produto produto, double valor, Cliente cliente){
        if(produto.getState().equals(State.LEILAO) && produto.getBiggestBid() < valor && produto.getBasePrice() < valor){
            produto.setBiggestBid(valor);
            produto.setWinningClinet(cliente);
            notifySubscribers("Nova licitação para " + produto.getDescription() + " no valor de " + valor + " por " + cliente.getName());
        }
    }

    public void notifySubscribers(String message){
        for(Subscriber subscriber : subscribers){
            subscriber.update(message);
        }
    }

    public void finalizarLeilao(Produto p){
        if(p.getBiggestBid() > 0){
            p.setState(State.VENDAS);
            notifySubscribers("Produto vendido: " + p.getDescription() + " por " + p.getBiggestBid() + " a " + p.getWinningClient().getName());
        }
        else{
            p.setState(State.STOCK);
            notifySubscribers("Produto não foi vendido e voltou ao stock: " + p.getDescription());
        }
    }
}
