public class Alojamento extends AbstractServico {
    private int maxOccupation;

    protected Alojamento(String name, String description, double price, int maxOccupation) {
        super(name, description, price);
        this.maxOccupation = maxOccupation;
    }

    @Override
    public String toString() {
        return "Alojamento [name=" + this.name + ", description=" + this.description + ", price=" + this.price
                + ", maxOccupation=" + this.maxOccupation + "]";
    }

    @Override
    public TipoServico type() {
        return TipoServico.ALOJAMENTO;
    }

}
