public class Aventura extends AbstractServico {

    protected Aventura(String name, String description, double price) {
        super(name, description, price);
    }

    @Override
    public TipoServico type() {
        return TipoServico.AVENTURA;
    }

}
