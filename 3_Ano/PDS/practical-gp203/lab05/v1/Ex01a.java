package v1;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;

public class Ex01a {
    public static void main(String[] args) {
        ArrayList<Veiculo> viaturas = new ArrayList<>();
        viaturas.add(new Motociclo("AA-12-13", "Ducatti", "sporenza", 330, "rapidissima"));
        viaturas.add(new Taxi("41-AS-12", "Mercedez", "Classe S", 1500, "A4", 1500, "TAXI123"));
        viaturas.add(new Ligeiro("12-AS-32", "Lamborghini", "Gallardo", 1500, "ABC123", 550));
        viaturas.add(new PesadoMercadorias("14-GS-23", "Lancia", "lento", 550, "B2", 20000, 40000));
        viaturas.add(new PesadoPassageiros("20-QW-12", "Volvo", "pesadissimo", 132312, "B3", 5000, 32));
        int maxKm = 0;
        Veiculo maxima = viaturas.get(0);
        for (Veiculo viatura : viaturas) {
            viatura.trajeto(ThreadLocalRandom.current().nextInt(1, 10 + 1));
            viatura.trajeto(ThreadLocalRandom.current().nextInt(1, 10 + 1));
            for (Veiculo viatura2 : viaturas) {
                System.out.printf(
                        "\nViatura 1 (%s) equals(Viatura 2): %b\n.ultimoTrajeto(): %d\t.distanciaPercorrida(): %d\n",
                        viatura,
                        viatura.equals(viatura2), viatura.ultimoTrajeto(), viatura.distanciaTotal());
            }
            if (viatura.distanciaTotal() > maxKm) {
                maxKm = viatura.distanciaTotal();
                maxima = viatura;
            }
        }
        Empresa empresa = new Empresa("EMPRESA", "1234-567", "empresa@gmail.com", viaturas);
        System.out.println("\n\n" + empresa);
        System.out.printf("\n\nViatura com mais distância percorrida: %s", maxima);
    }        
}
