import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

public class BaseCatalogAdmin implements CatalogAdmin {
    private Map<String, Servico> servicos = new LinkedHashMap<>();
    private List<Subscriber> subscribers = new ArrayList<>();

    @Override
    public boolean registarServico(String codigo, Servico servico) {
        servicos.put(codigo, servico);
        // notify subscribers
        for (Subscriber subscriber : subscribers) {
            subscriber.update("registarServico " + codigo + " " + servico.toString());
        }
        return true;
    }

    public void subscribe(Subscriber subscriber) {
        subscribers.add(subscriber);
    }

    @Override
    public boolean verificarServico(String codigo) {
        Servico existingService = servicos.get(codigo);
        if (existingService == null) {
            return false;
        }
        return true;

    }

    @Override
    public Servico selecionarServico(String codigo) {
        return servicos.get(codigo);
    }

    @Override
    public Servico removerServico(String codigo) {
        Servico servico = servicos.remove(codigo);
        // notify subscribers
        for (Subscriber subscriber : subscribers) {
            subscriber.update("removerServico " + codigo + " " + servico.toString());
        }
        return servico;
    }

    @Override
    public Map<String, Servico> getServicos() {
        return servicos;
    }

    @Override
    public Iterator<String> iterator() {
        return new ServicosIterator<>();
    }

    private class ServicosIterator<T> implements Iterator<T> {
        private int index = 0;
        private List<Servico> serviceList;

        public ServicosIterator() {
            serviceList = new ArrayList<>();
            for (Servico servico : servicos.values()) {
                serviceList.add(servico);
            }
        }

        @Override
        public boolean hasNext() {
            return index < servicos.size();
        }

        @Override
        public T next() {
            if (hasNext())
                return (T) serviceList.get(index++).toString();
            throw new NoSuchElementException("only " + servicos.size() + " elements");
        }
    }
}
