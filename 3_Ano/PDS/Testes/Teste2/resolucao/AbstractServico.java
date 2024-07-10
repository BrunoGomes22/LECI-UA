public abstract class AbstractServico implements Servico {
    protected String name;
    protected String description;
    protected double price;

    protected AbstractServico(String name, String description, double price) {
        this.name = name;
        this.description = description;
        this.price = price;
    }

    protected AbstractServico(String name, String description) {
        this.name = name;
        this.description = description;
    }

    @Override
    public String description() {
        return description;
    }

    @Override
    public String name() {
        return name;
    }

    @Override
    public double price() {
        return price;
    }

    @Override
    public String toString() {
        return this.getClass().getSimpleName() + " [name=" + name + ", description=" + description + ", price=" + price
                + "]";
    }

}
