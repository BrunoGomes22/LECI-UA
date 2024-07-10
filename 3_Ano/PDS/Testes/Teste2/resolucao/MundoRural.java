public class MundoRural extends AbstractServico {

    protected MundoRural(String name, String description, double price) {
        super(name, description, price);
    }

    @Override
    public TipoServico type() {
        return TipoServico.MUNDO_RURAL;
    }

}
