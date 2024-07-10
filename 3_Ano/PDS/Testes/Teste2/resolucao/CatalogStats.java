public class CatalogStats {
    private CatalogAdmin catalogAdmin;

    public CatalogStats(CatalogAdmin catalogAdmin) {
        this.catalogAdmin = catalogAdmin;
    }

    public double getAveragePriveActivities() {
        double total = 0;
        for (Servico s : catalogAdmin.getServicos().values()) {
            if (s.type() != TipoServico.ALOJAMENTO && s.type() != TipoServico.PACOTE_SERVICOS) {
                total += s.price();
            }
        }

        return total / catalogAdmin.getServicos().size();
    }

    public double getMinimumPrice(TipoServico t) {
        double min = Double.MAX_VALUE;
        for (Servico s : catalogAdmin.getServicos().values()) {
            if (s.type() != t) {
                continue;
            }
            if (s.price() < min) {
                min = s.price();
            }
        }
        return min;
    }

}
