package xI3;

public class UNSecurityCouncil implements UnitedNations{
    private USA usa;
    private China china;
    private Russia russia;

    public void setUsa(USA usa) {
        this.usa = usa;
    }
    public void setChina(China china) {
        this.china = china;
    }

    public void setRussia(Russia russia) {
        this.russia = russia;
    }
    
    public void declare(Country country, String message){
        String newMessage = country.getClass().getSimpleName() + " said: " + message;
        if(country != usa){
            usa.recieveMessage(newMessage);
        }
        if (country != china){
            china.recieveMessage(newMessage);
        }
        if(country != russia){
            russia.recieveMessage(newMessage);
        }
    }     
}
