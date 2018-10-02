import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Scanner;

public class Java_wacky {
    public static void main(String[] args) {
        ArrayDeque<String> aDeque = new ArrayDeque<> (); 
	System.out.println("\t_________________________");
	System.out.println();
	System.out.println("\t\tENQUEUE");
	System.out.println("\t\t   &");
	System.out.println("\t\tDEQUEUE");
	System.out.println("\t_________________________");
	System.out.println("\n\n");
 
	Scanner in = new Scanner(System.in);
	String input1 = "" ;	

 

	Boolean conti;
	do{
		String NQ = EnQ(input1);
		aDeque.addLast(NQ);
		
	System.out.println();
	System.out.println();
	System.out.println("\t this is my element/s\n\t after enque");

           /* Iterate through elements in an ArrayDeque instance */
        for( Iterator itr =  aDeque.iterator(); itr.hasNext(); ) {    
            System.out.println(itr.next());    
        }
        System.out.println();
	

	System.out.println("want to enque again? [true] or [False]");
	conti = in.nextBoolean();
	}while(conti);




 


        System.out.println("First Element : " + aDeque.getFirst());    
        System.out.println("Last Element : " + aDeque.getLast()); 
 	System.out.println();
	System.out.println();
 

            /* Removal of the Deque Elements */
	Boolean cont;
	do{
        System.out.println("First Element(Removed):"+aDeque.removeFirst());  
          
        System.out.println("%n Size of Array Deque: " + aDeque.size());

	System.out.println();
	System.out.println();
	System.out.println("\t After Deque");
	System.out.println();

	for( Iterator itr =  aDeque.iterator(); itr.hasNext(); ) {    
            System.out.println(itr.next());    
        }  
	System.out.println();
	System.out.println();
 
	System.out.println("want to deque again? [true] or [False]");
	cont = in.nextBoolean();
	}while(cont);
 
	
	
	       

    }


	public static String EnQ(String input){
	
	Scanner in = new Scanner(System.in);
	String input1;
	System.out.println("add  [enque]:");
	input1 = in.nextLine(); 
	return String.format(input1);
	
	}



}