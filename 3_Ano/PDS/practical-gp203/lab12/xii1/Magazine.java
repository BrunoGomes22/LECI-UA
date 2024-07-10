package xii1;

public class Magazine {
    private Phone[] phoneList;

    public Magazine(Phone[] phoneList){
        this.phoneList = phoneList;
    }

    public Phone[] getPhoneList(){
        return phoneList;
    }

    public void sortPhones(SortStrat strategy, String attr){
        strategy.sort(phoneList, attr);
    }
}
