import java.io.*; 
import java.util.Scanner; 
   
public class WarmingHearts { 
   
    public static void main(String args[]) throws IOException { 
          
        int numOfLines = 2000; 
          
        FileWriter fw = new FileWriter("WarmingHearts.txt");  
        BufferedWriter bw = new BufferedWriter(fw); 
        PrintWriter wr = new PrintWriter(bw); 
          
        wr.println("Warming Hearts"); 
          
        // writing 2000 lines in the file
        for (int i = 0; i < numOfLines; i++) { 
            wr.println("Change is never easy, but it is necessary for growth."); 
        } 
          
        // closing the file  
        wr.close();  
        bw.close(); 
          
        // displaying the msg  
        System.out.println("Done writing 2000 lines to the 'WarmingHearts.txt' file"); 
    } 
}