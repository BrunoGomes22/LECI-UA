import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class PacoteServicos extends AbstractServico {

    private List<Servico> servicos;
    private static final int MAX_DISCOUNT = 10;
    private static final int DISCOUNT_PER_TYPE = 3;

    protected PacoteServicos(String name, String description) {
        super(name, description);
        servicos = new ArrayList<>();
    }

    public void add(Servico s) {
        servicos.add(s);
    }

    private int getDiscount() {
        int discount = DISCOUNT_PER_TYPE * getDistinctServicesCount();
        if (discount > MAX_DISCOUNT) {
            discount = 10;
        }
        return discount;
    }

    private int getDistinctServicesCount() {
        Set<TipoServico> distinctServices = new HashSet<>();
        for (Servico s : servicos) {
            distinctServices.add(s.type());
        }
        return distinctServices.size();
    }

    private int getPriceBeforeDiscount() {
        int total = 0;
        for (Servico servico : servicos) {
            total += servico.price();
        }
        return total;
    }

    @Override
    public String toString() {
        int discount = getDiscount();
        double priceBeforeDiscount = getPriceBeforeDiscount();
        return String.format("Pacote com %d serviços de %d tipos. Preco (desconto = %d%%): %.2f",
                this.servicos.size(),
                getDistinctServicesCount(),
                discount,
                priceBeforeDiscount * (1 - (double) discount / 100));
    }

    @Override
    public TipoServico type() {
        return TipoServico.PACOTE_SERVICOS;
    }

}
