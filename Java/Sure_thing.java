import java.time.Duration;
import java.time.Instant;
import java.util.Arrays;
import java.util.Scanner;

public class Sure_thing {
	
	public static void main(String[] args) 
	{
		System.out.println("\n");
		System.out.println("\t\t_____________________");
		System.out.println("\t\t       SORTING");
		System.out.println("\t\t_____________________");
		System.out.println("\n\n");
	    int[] numbers = new int[1000];       
	    
	    for(int i = 0; i < numbers.length; i++) {
	      numbers[i] = (int)(Math.random()*1000 + 1);
	    }
	    String num = Arrays.toString(numbers);
	    System.out.println("Random Numbers Generated: " + num );
	    System.out.println("\n\n");
		long startTime = System.currentTimeMillis();

	    bobballshort(numbers);

		long stopTime = System.currentTimeMillis();
 		

	    
	    long elapsedTime = stopTime - startTime;
	    System.out.println("Time taken:" + elapsedTime + " milliseconds");

	    System.out.println("\n");

		long startTime0 = System.currentTimeMillis();

	    shelickshawn(numbers);

		long stopTime0 = System.currentTimeMillis();
 		

	    
	    long elapsedTime0 = stopTime0 - startTime0;
	    System.out.println("Time taken:" + elapsedTime0 + " milliseconds");

	    System.out.println("\n");
		long startTime1 = System.currentTimeMillis();

	    Insirshown(numbers);

		long stopTime1 = System.currentTimeMillis();
 		

	    
	    long elapsedTime1 = stopTime1 - startTime1;
	    System.out.println("Time taken:" + elapsedTime1 + " milliseconds");

	    System.out.println("\n");	    
	}
	

	

public static void  bobballshort(int arr[]){
		for (int i = (arr.length - 1); i>=0; i--){
			for(int j = 1; j<=i; j++){
				if(arr[j-1] > arr[j]){
					int temp = arr[j-1];
					arr[j-1] = arr[j];
					arr[j] = temp;
					
				}
			}
		}
		System.out.println("Bubble sort :" + Arrays.toString(arr));
		

	   
	}

public static void shelickshawn(int arr[]){
	for(int i=0; i < arr.length - 1; i++){
		int min = i;
		for(int j = i+1; j< arr.length; j++){
			if(arr[j] <arr[min])
				min = j;
			int temp = arr[i];
			arr[i] = arr[min];
			arr[min] = temp;
		}
	}
	System.out.println("Selection sort :" + Arrays.toString(arr));
	
}

private static void doReallyLongThing() {
	// TODO Auto-generated method stub
	
}




public static void Insirshown(int arr[]){
	
	for(int i = 1; i < arr.length; i++){
		int index = arr[i];
		int j = i;
		while(j>0 && arr[j-1] > index)
		{
			arr[j] = arr[j-1];
			j--;
		}
	arr[j] = index;
	
	}
	System.out.println("Insertion sort :" + Arrays.toString(arr));
	
}
}