package aula05;

public abstract class Forma {
    public String cor;

    public Forma(String cor){
        this.cor = cor;
    }

    public abstract double area();
    public abstract double perimetro();

    public void setCor(String cor){
        this.cor = cor;
    }

    public String getCor(){
        return this.cor;
    }

    public boolean equals(Object other){
        assert other != null;
        boolean res = (this == other);
        if(!res && (other instanceof Forma)){
            res = cor.equals(((Forma)other).getCor());
        }
        return res;
    }
}
