package Aula06;

public class Conjunto {
    private int[] vector;
    private int size;

    public Conjunto(){
        this.vector = new int[1];
        this.size = 0;
    }

    
    public void insert(int n){
        if(this.vector.length == this.size){
            this.vector = expand(vector); //cria novo espaço no array
        }

        if(!this.contains(n)){ //n é necessário passar o vector como argumento
            vector[this.size++] = n;
        }

    }

    public void remove(int n){
        /*
        for(int i = 0; i<this.size; i++){
            if(this.vector[i] == n){
                //mover os elementos uma posição para trás
                for(int j = i; j<this.size-1;j++){
                    this.vector[j] = this.vector[j+1];
                }
            }
        }
        */

        int i;
        for(i = 0; i < this.size; i++) {
            if( this.vector[i] == n ) {
                this.size--;
                for(int j = i; j < this.size; j++) {
                    this.vector[j] = this.vector[j+1];
                }
            }
        }

    }

    public void empty(){
        this.vector = new int[0];
    
        
    }

    public String toString(){
        String str = "";
        if(this.vector.length == 0){
            return String.format("");
        }
        for(int i = 0; i<this.size;i++){
            str += this.vector[i] + " ";
        }
        return str;
    }

    public int size(){
        return this.size;
    }

    public Conjunto combine(Conjunto add){
        Conjunto conjuntoFinal = new Conjunto();
        for(int i = 0; i<this.size;i++){
            conjuntoFinal.insert(this.vector[i]);
        }

        for(int j = 0; j<add.size;j++){
            conjuntoFinal.insert(add.getElementByIndex(j));
        }

        return conjuntoFinal;
    }

    public Conjunto subtract(Conjunto dif){
        Conjunto conjuntoFinal = new Conjunto();
        for(int i = 0; i<this.size;i++){
            conjuntoFinal.insert(this.vector[i]);
        }

        for(int j = 0; j<dif.size;j++){
            conjuntoFinal.remove(dif.getElementByIndex(j));
        }

        return conjuntoFinal;
    }

    public Conjunto intersect(Conjunto inter){
        Conjunto conjuntoFinal = new Conjunto();
        for(int i = 0; i < this.size;i++ ){
            if(inter.contains(this.vector[i])){
                conjuntoFinal.insert(this.vector[i]);
            }
        }
        return conjuntoFinal;
    }


    public int getElementByIndex(int i){
        assert this.size > i;
        return this.vector[i];
    }

    public int[] expand(int[] OrigArray){
        int[] newArray = new int[OrigArray.length+1];
        System.arraycopy(OrigArray, 0, newArray, 0, OrigArray.length);
        return newArray;
    }

    public boolean contains(int n){
        for(int i = 0; i<this.size;i++){
            if(this.vector[i] == n){
                return true;
            }
        }
        return false;
    }
}
