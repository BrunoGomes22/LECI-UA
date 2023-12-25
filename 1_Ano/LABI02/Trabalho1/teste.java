public class teste {
    public static void main(String[] args){
        String str = "";
        int[] arr = {2,3,5,1,2,5,64,21};

        int min = arr[0];
        
         for (int i = 1; i < arr.length; i++){
            if(arr[i]<min){
                min = arr[i];
			}
		 }
		System.out.println(min);

        int indexToRemove = 4;
        
        int[] proxyArray = new int[arr.length-1];

        for(int i = 0, j = 0; i<arr.length;i++){
            if(i != indexToRemove){
                proxyArray[j++] = arr[i];
            }
            
        }


        for(int k = 0; k<proxyArray.length;k++){
            str += proxyArray[k] + ",";
        }
        System.out.println(str);
        System.out.println(arr.length);
        System.out.println(proxyArray.length);

        int[] finalArray = new int[arr.length];

        for(int i = 0; i<proxyArray.length;i++){
            finalArray[i] = proxyArray[i];
        }

        System.out.println(finalArray.length);

        String str1 = "";
        for(int k = 0; k<finalArray.length;k++){
            str1 += finalArray[k] + ",";
        }
        
        System.out.println(str1);
    }
}
