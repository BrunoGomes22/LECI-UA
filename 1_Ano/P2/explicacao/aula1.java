

class Automovel{
	String marca;
	int kms;
	String cor;
	
    /*Construtor 1*/
   
   Automovel(String marca, int kilometros, String cor)
   {
	     this.marca = marca;
	     kms = kilometros;
	     this.cor = cor;
   }
   
   /* Construtuor 2*/
   /* Overloading: ter mais que um metodo com o mesmo nome*/
   
   Automovel(String marca, int kilometros)
   {
	     this.marca = marca;
	     kms = kilometros;
	         
   }
   

}
