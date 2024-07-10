package xii1;

public class Test {
    public static void main(String[] args){
        Phone[] phones = new Phone[6];
        phones[0] = new Phone(null, 1000, 500, 48);
        phones[1] = new Phone(null, 2000, 250, 12);
        phones[2] = new Phone(null, 1500, 256, 7);
        phones[3] = new Phone(null, 1250, 64, 10);
        phones[4] = new Phone(null, 700, 128, 56);
        phones[5] = new Phone(null, 800, 32, 6);

        Magazine worten = new Magazine(phones);

        System.out.println("---------Sorted price using BubbleSort---------------");

        BubbleSort bs = new BubbleSort();
        worten.sortPhones(bs, "price");

        System.out.println("---------Sorted memory using SelectionSort---------------");

        SelectionSort ss = new SelectionSort();
        worten.sortPhones(ss, "memory");

        System.out.println("---------Sorted camera using InsertionSort---------------");

        InsertionSort is = new InsertionSort();
        worten.sortPhones(is, "camera");
    }
}
