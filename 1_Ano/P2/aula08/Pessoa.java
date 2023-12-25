
public class Pessoa implements Comparable<Pessoa>
{
  private Data birthday;
  private String name;
  
  public Pessoa(Data birthday, String name){
		this.birthday = birthday;
		this.name = name;
  }
  
  public Data getBirthday(){
	  return birthday;
  }
  
  public String getName(){
	  return name;
  }
  
  public String toString(){
	  return String.format("%s - %s",name , birthday);
  }
  
  public int compareTo(Pessoa p2){
	if(this.birthday.compareTo(p2.birthday)<0) return -1;
	if(this.birthday.compareTo(p2.birthday)>0) return 1;
	return 0;
	}
  
}
