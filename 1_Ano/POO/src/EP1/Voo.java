package EP1;

import java.time.LocalDate;

public class Voo extends Servico{

    private String code;
    private LocalDate date;
    private Classe classe;



    public Voo(String code, LocalDate date, Classe classe){
        super("V");
        this.code = code;
        this.date = date;
        this.classe = classe;
    }

    public String getCode(){
        return this.code;
    }

    public LocalDate getDate(){
        return this.date;
    }

    public Classe getClasse(){
        return this.classe;
    }
}
