import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.BufferedWriter;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;


public class Another{

	public static void main(String[] args){

	String filename = "",elem = "";
	
	Scanner in = new Scanner(System.in);
	System.out.println("Enter the name of your File or create here, just name it :) ");
	filename = in.next();
	System.out.println();
	System.out.println();
	System.out.println("If it is a new file, then our file is empty, so you must  [ADD] first");
	
	

	System.out.println("________________________");
	System.out.println("  Functions in Sequence:");
	System.out.println("________________________");
	System.out.println(" 	  ADD");	
	System.out.println("	  REMOVE");
	System.out.println(" 	  INSERT");
	System.out.println(" 	  PRINT");
	System.out.println("________________________");
	System.out.println();
	System.out.println();
	




	Boolean cont;

	System.out.println();
	System.out.println("____");
	System.out.println("ADD");
	System.out.println("____");
	
	do{
	add(filename, elem);
	
	System.out.println("do u want to add more? true or false");
	cont = in.nextBoolean();
	}while (cont);
	

	String ring = "tempura.txt";

	System.out.println();
	System.out.println("______");
	System.out.println("REMOVE");
	System.out.println("______");
	do{
	remove(filename, ring, elem);
	
	System.out.println("do u want to remove more? true or false");
	cont = in.nextBoolean();
	}while (cont);	
	


	System.out.println();
	System.out.println("_______");
	System.out.println("INSERT");
	System.out.println("_______");
	
	insert(filename, ring);


	System.out.println();
	System.out.println("______");
	System.out.println("PRINT");
	System.out.println("______");
	
	print(filename);


	
	
	System.out.println();
	System.out.println();
	System.out.println();
	

	}
	

	public static void add(String filename, String elem){
	
	Scanner in = new Scanner(System.in);
	String cool = elem;
	System.out.println("go add some: ");
	cool = in.nextLine();

	try {
   	  PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(filename, true)));
  	  out.println(cool);
  	  out.close();
	} catch (IOException e) {}
	

	}


	public static void remove(String filename, String ring, String elem){
	Scanner in = new Scanner(System.in);

	System.out.println("enter what you want to remove from the  file");
	elem = in.nextLine();
try{	File inputfile = new File(filename);
	File tempfile  = new File(ring);

	BufferedReader reader = new BufferedReader(new FileReader(inputfile));
	BufferedWriter writer = new BufferedWriter(new FileWriter(tempfile));
	
	String currentline;

        while((currentline = reader.readLine()) != null) {
            if(null!=currentline && !currentline.equalsIgnoreCase(elem)){
                writer.write(currentline + System.getProperty("line.separator"));
            }

	}
		writer.close();
		reader.close();
		
		inputfile.delete();
		tempfile.renameTo(inputfile);
		
		
	}catch(IOException ex) { ex.printStackTrace();}
	
	}


	public static void print(String filename){
try{	File f = new File(filename);
	
	Scanner input = new Scanner(f);
	BufferedReader reader = new BufferedReader(new FileReader(f));
	
	while(reader.readLine() != null){
		System.out.println(input.nextLine());
	
	}
	
	}catch(IOException ex){ ex.printStackTrace();}

	}


	public static void insert(String filename, String ring){

	Scanner inpt = new Scanner(System.in);

	String ger="";
	System.out.println("What do you want to insert? ");
	ger = inpt.nextLine();

	int rap_personal;
	System.out.println("At what index?");
	rap_personal= inpt.nextInt();

try{
	File f = new File(filename);
	File g = new File(ring);
	
	BufferedReader reader = new BufferedReader(new FileReader(f));
	BufferedWriter writer = new BufferedWriter(new FileWriter(g));
	
	String currentline;
	int i = 0;
	while((currentline = reader.readLine()) != null ) {
            if(i==rap_personal){
             	 writer.write( ger + System.getProperty("line.separator"));
		 writer.write(currentline  + System.getProperty("line.separator"));
	      
		i++;
            }
		else if(null!=currentline){
                writer.write(currentline + System.getProperty("line.separator"));
		i++;
            }
		
		else{

		i++;
		}
	
	}


 		writer.close();
		reader.close();
		
		f.delete();
		g.renameTo(f);
  	  
	
		
	}catch(IOException ex) { ex.printStackTrace();}
	
	}
}