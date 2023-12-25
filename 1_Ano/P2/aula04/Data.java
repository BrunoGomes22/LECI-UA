import static java.lang.System.*;
import java.util.Calendar;

public class Data {
  private int dia, mes, ano;

  /** Inicia esta data com o dia de hoje. */
  
  public Data() {
    // Aqui usamos a classe Calendar da biblioteca standard para obter a data atual.
    Calendar today = Calendar.getInstance();
    dia = today.get(Calendar.DAY_OF_MONTH);
    mes = today.get(Calendar.MONTH) + 1;
    ano = today.get(Calendar.YEAR);
  }

  /** Inicia a data a partir do dia, mes e ano dados. */
  public Data(int dia, int mes, int ano) {
	  assert dia <= 31 && dia >= 1 : "Dia inválido";
	  assert mes <= 12 && mes >= 1 : "Mês Inválido";
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }
  
  /** Devolve esta data segundo a norma ISO 8601. */
  public String toString() {
    return String.format("%04d-%02d-%02d", ano, mes, dia);
  }

  /** Indica se ano é bissexto. */
  public static boolean bissexto(int ano) {
    return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
  }

  public int dia(){
	  return dia;
  }
  
  public int mes(){
	  return mes;
  }

	public int ano(){
	  return ano;
  }
  
  
  /** Dimensões dos meses num ano comum. */
  private static final
  int[] diasMesComum = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
	
	private static final
	String[] mesesPorExtenso = { "Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
	
  /** Devolve o número de dias do mês dado. */
  public static int diasDoMes(int mes, int ano) {
	  assert mes <= 12 && mes >= 1 : "Mês Inválido";
	  
	  if( mes != 2){
		  return diasMesComum[mes - 1];
	  
	  }
	  else if( bissexto(ano) == true ){
		  return 29;
	  }
	  else{
		  return 28;
	  }
   
  }

  /** Devolve o mes da data por extenso. */
  /*
  public String mesExtenso() {
	
	switch(mes){
		case 1: return "Janeiro";
		case 2: return "Fevereiro";
		case 3: return "Março";
		case 4: return "Abril";
		case 5: return "Maio";
		case 6: return "Junho";
		case 7: return "Julho";
		case 8: return "Agosto";
		case 9: return "Setembro";
		case 10: return "Outubro";
		case 11: return "Novembro";
		case 12: return "Dezembro";
	}
	return null;
  }

*/
	
	public String mesExtenso() {
		return mesesPorExtenso [mes-1];
	}
	
  /** Devolve esta data por extenso. */
  public String extenso() {
    return(dia + " de " + mesesPorExtenso [mes-1] + " de " + ano);
  }

  /** Indica se um terno (dia, mes, ano) forma uma data válida. */
  // perguntar
  public static boolean dataValida(int dia, int mes, int ano) {
    if((dia > 0) && (mes <= 12) && (mes>0) && dia <= diasDoMes(mes, ano)){
		return true;
		}
    return false;
  }


  public void seguinte() {
    if( dia == diasDoMes(mes, ano)){
		dia = 1;
		if( mes == 12){
			mes = 1;
			ano++;
		}
		else mes++;
	}
	else dia++;
	assert dataValida(dia, mes, ano) : "Data Inválida";
  }

	public static Data parseData(String dataISO){
		String[] partes = dataISO.split("-");
		if( partes.length != 3 ){
			exit (1);
		}
		int ano = Integer.parseInt(partes[0]);
		int mes = Integer.parseInt(partes[1]);
		int dia = Integer.parseInt(partes[2]);
		
		if( !dataValida( dia, mes, ano) ){
			exit(1);
		}
		
		Data data = new Data(dia, mes, ano);
		
		return data;
	}
	
	public int compareTo(Data data2){
		
		int ano2 = data2.ano();
		int mes2 = data2.mes();
		int dia2 = data2.dia();
		if( ano2 > ano ){
			return -1;
		}
		else if( ano > ano2 ){
			return 1;
		}
		else if( mes2 > mes ){
			return -1;
		}
		else if ( mes > mes2 ){
			return 1;
		}
		else if ( dia2 > dia ){
			return -1;
		}
		else if (dia > dia2){
			return 1;
		}
		else return 0;
	}
	

}


