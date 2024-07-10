package aula05;
public class Factory {
    public static Forma createShape(String type, String cor){
        if ("Circle".equalsIgnoreCase(type)) {
            return new Circulo(cor);
        } else if ("Rectangle".equalsIgnoreCase(type)) {
            return new Retangulo(cor);
        } else if ("Square".equalsIgnoreCase(type)) {
            return new Triangulo(cor);
        }
        return null;
    }
}

