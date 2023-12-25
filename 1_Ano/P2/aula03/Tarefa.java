
public class Tarefa{
	private Data dataIni;
	private Data dataFim;
	private String textoTarefa;
	
	public Tarefa(Data dataIni, Data dataFim, String textoTarefa){
		this.dataIni = dataIni;
		this.dataFim = dataFim;
		this.textoTarefa = textoTarefa;		
	}
	
	public Data inicio(){
		return dataIni;
	}
	
	public Data fim(){
		return dataFim;
	}
	
	public String texto(){
		return textoTarefa;
	}
	
	public String toString(){
		return dataIni.toString() + " --- " + dataFim.toString() + ": " + textoTarefa;
		
	}
	
	public boolean interseta(Tarefa t2){
		if(t2.inicio().compareTo(dataIni) > 0 && t2.inicio().compareTo(dataFim) < 0 || t2.fim().compareTo(dataFim) < 0 && t2.fim().compareTo(dataIni) > 0) 
			return true;
		else
			return false;
	}
	
	

}



