package xii1;

public class InsertionSort implements SortStrat{
    
    public void sort(Phone[] phones, String attr){
        double[] arr = getAttributes(phones, attr);
        int n = arr.length;
        for (int i = 1; i < n; ++i) {
            double key = arr[i];
            int j = i - 1;

            /* Move elements of arr[0..i-1], that are
               greater than key, to one position ahead
               of their current position */
            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j = j - 1;
            }
            arr[j + 1] = key;
        }

        printArray(arr);

    }

    private double[] getAttributes(Phone[] phones, String attr){
        double[] arr = new double[phones.length];
        if(attr.equals("price")){
            for(int i = 0; i<phones.length; i++){
                arr[i] = phones[i].getPrice();
            }
        }
        else if(attr.equals("memory")){
            for(int i = 0; i<phones.length; i++){
                arr[i] = phones[i].getMemory();
            }
        }
        else if(attr.equals("camera")){
            for(int i = 0; i<phones.length; i++){
                arr[i] = phones[i].getCamera();
            }
        }
        return arr;
    }

    private void printArray(double[] arr){
        for(int i = 0; i<arr.length;i++){
            System.out.println(arr[i]);
        }
    }
}
