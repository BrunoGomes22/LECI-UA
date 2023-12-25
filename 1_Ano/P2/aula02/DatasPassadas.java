import static java.lang.System.*;

public class DatasPassadas {

  public static void main(String[] args) {
    Data atual = new Data();   
	Data natalPassado = new Data(25, 12, 2020);
	
	
	
	
	while(!atual.extenso().equals(natalPassado.extenso())){
			natalPassado.seguinte();
			out.printf("%s\n", natalPassado.extenso());
		}
	
    
  }

}

