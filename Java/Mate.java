import java.util.Scanner;
import java.util.Stack;


public class Mate {
	  private Stock theStack;
	   private String input;
	   private String output = "";
	   public Mate (String in) {
	      input = in;
	      int stackSize = input.length();
	      theStack = new Stock(stackSize);
	   }
	   public String doTrans() {
	      for (int j = 0; j < input.length(); j++) {
	         char ch = input.charAt(j);
	         switch (ch) {
	            case '+': 
	            case '-':
	               gotOper(ch, 1); 
	               break; 
	            case '*': 
	            case '/':
	               gotOper(ch, 2); 
	               break; 
	            case '(': 
	               theStack.push(ch);
	               break;
	            case ')': 
	               gotParen(ch); 
	               break;
	            default: 
	               output = output + ch; 
	               break;
	         }
	      }
	      while (!theStack.isEmpty()) {
	         output = output  + theStack.pop();
	      }
	      System.out.println(output);
	      return output; 
	   }
	   public void gotOper(char opThis, int prec1) {
	      while (!theStack.isEmpty()) {
	         char opTop = theStack.pop();
	         if (opTop == '(') {
	            theStack.push(opTop);
	            break;
	         } else {
	            int prec2;
	            if (opTop == '+' || opTop == '-')
	            prec2 = 1;
	            else
	            prec2 = 2;
	            if (prec2 < prec1) { 
	               theStack.push(opTop);
	               break;
	            } 
	            else output = output  + opTop;
	         }
	      }
	      theStack.push(opThis);
	   }
	   public void gotParen(char ch) { 
	      while (!theStack.isEmpty()) {
	         char chx = theStack.pop();
	         if (chx == '(') 
	         break; 
	         else output = output + chx; 
	      }
	   }
	
	public static void main(String[] args) {
		
		System.out.println("___________________________________");
		System.out.println("*								  ");
		System.out.println("*     HI  Welcome to my Program   ");
		System.out.println("* 	 This Program will solve from ");
		System.out.println("*   	 Infix to Postfix    	  ");
		System.out.println("*								  ");
		System.out.println("___________________________________");
		
		System.out.println();
		
		
		String input = "";
	    Scanner scan = new Scanner(System.in);
	     System.out.println("enter equation with spaces: ");
	     input = scan.nextLine();
	      String output;
	      Mate theTrans = new Mate (input);
	      output = theTrans.doTrans(); 
	      System.out.println("Postfix is " + output + '\n');
	      System.out.println();
	    
	    Stack<Integer> stack = new Stack<Integer>();

	    System.out.println("Please enter the postfix expression above with spaces:");

	    String equation = scan.nextLine();

	    String[] terms = equation.split(" ");

	    for (String s : terms ) {

	        if (s.equals("+")) stack.push(stack.pop() + stack.pop());
	        else if (s.equals("-")) stack.push(-stack.pop() + stack.pop());
	        else if (s.equals("*")) stack.push(stack.pop() * stack.pop());
	        else if (s.equals("/")) {
	            int a = stack.pop(); 
	            int b = stack.pop(); 
	            stack.push( b/a );
	        }
	        else stack.push(Integer.parseInt(s));
	    }
	    System.out.println("result: " + stack.pop());
	}   
	   class Stock {
		      private int maxSize;
		      private char[] stackArray;
		      private int top;
		      
		      public Stock(int max) {
		         maxSize = max;
		         stackArray = new char[maxSize];
		         top = -1;
		      }
		      public void push(char j) {
		         stackArray[++top] = j;
		      }
		      public char pop() {
		         return stackArray[top--];
		      }
		      public char peek() {
		         return stackArray[top];
		      }
		      public boolean isEmpty() {
		         return (top == -1);
		      }
		   }	
	
}