
public class Agenda{
	private Tarefa[] agenda = new Tarefa[1000];
	private int numeroDeTarefas = 0;
	
	
	public Agenda(){
	}
	
	public void novaTarefa(Tarefa novaTarefa){
		agenda[numeroDeTarefas] = novaTarefa;
		numeroDeTarefas++;
		
		sort();
	}
	
	public void sort() {
    for (int i = 0; i < numeroDeTarefas-1; i++) {
      for (int j = i+1; j < numeroDeTarefas-1; j++) {
        if (agenda[j].inicio().compareTo(agenda[i].inicio()) < 0) {
          Tarefa tmp = agenda[j];
          agenda[j] = agenda[i];
          agenda[i] = tmp;
        }
      }
    }
  }
	
	public void escreve(){
		for(int i=0; i<agenda.length; i++){
			System.out.println( agenda[i].toString());
		}
	}
	
	public Agenda filtra(Data d1, Data d2){
		Agenda novaAgenda = new Agenda();
		Tarefa t2 = new Tarefa(d1, d2, "");
		for(int i = 0; i<agenda.length; i++){
			if(agenda[i].interseta(t2)){
				novaAgenda.novaTarefa(agenda[i]);
			}
		}
		
		
		return novaAgenda;
	}
	
	
} 
