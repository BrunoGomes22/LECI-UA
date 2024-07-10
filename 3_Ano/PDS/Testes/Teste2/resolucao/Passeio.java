public class Passeio extends AbstractServico {

    protected Passeio(String name, String description, double price) {
        super(name, description, price);
    }

    @Override
    public TipoServico type() {
        return TipoServico.PASSEIO;
    }

}
