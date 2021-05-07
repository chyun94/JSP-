package Resource;

import java.io.PrintStream;
import java.util.Scanner;

import View.Menu;

public interface R {
	
	PrintStream out = System.out;
	String menuStr = "1.Input 2.Output 3.Reacher 4.Modify 5.Delete 6.Finish";
	
	Scanner scan = new Scanner(System.in);
	
	Menu menu = new Menu();
	
	
}
