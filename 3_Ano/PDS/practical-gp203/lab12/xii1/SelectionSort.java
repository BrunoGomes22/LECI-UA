package xii1;

public class SelectionSort implements SortStrat{

    public void sort(Phone[] phones, String attr){

        double[] arr = getAttributes(phones, attr);
        int n = arr.length;

        // One by one move boundary of unsorted subarray
        for (int i = 0; i < n-1; i++)
        {
            // Find the minimum element in unsorted array
            int min_idx = i;
            for (int j = i+1; j < n; j++)
                if (arr[j] < arr[min_idx])
                    min_idx = j;

            // Swap the found minimum element with the first
            // element
            double temp = arr[min_idx];
            arr[min_idx] = arr[i];
            arr[i] = temp;
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
