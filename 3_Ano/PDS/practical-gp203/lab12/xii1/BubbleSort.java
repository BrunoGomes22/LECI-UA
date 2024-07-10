package xii1;

public class BubbleSort implements SortStrat{
    
    public void sort(Phone[] phones, String attr){
        int i, j;
        double temp;
        boolean swapped;

        double[] arr = getAttributes(phones, attr);
        int n = arr.length;
        
        for (i = 0; i < n - 1; i++) {
            swapped = false;
            for (j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    
                    // Swap arr[j] and arr[j+1]
                    temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                    swapped = true;
                }
            }

            // If no two elements were
            // swapped by inner loop, then break
            if (swapped == false)
                break;
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
