public class Automovel{
	private String marca;
	private int kms;
	private String cor;
	
	private static int numeroAutomoveis = 0;
	
	public Automovel()
	{
	
	}	
	
    /*Construtor 1*/
   
   public Automovel(String marca, int kilometros, String cor)
   {
	     this.marca = marca;
	     kms = kilometros;
	     this.cor = cor;
	     numeroAutomoveis++;
	   
   }
   
   /* Construtor 2*/
   /* Overloading: ter mais que um metodo com o mesmo nome*/
   
   public Automovel(String marca, int kilometros)
   {
	     this.marca = marca;
	     kms = kilometros;
	      numeroAutomoveis++;   
   }
   
   
   public void circular(int kilometrosPercorridos){
	   kms = kms + kilometrosPercorridos;
   }

	public void pintar(String pinturaNova){
		cor = pinturaNova;
	}


    public String getCor(){
		return cor;
	}
	
	public int getKms(){
		return kms;
	}
	
	public String getMarca(){
		return marca;
	}
    
    public void setMarca(String novaMarca){
		marca = novaMarca;
	}

	public void setKms(int novosKms){
		kms = novosKms;
	}
	
	public static int getNumeroAutomoveis(){
		return numeroAutomoveis;
	}
}
