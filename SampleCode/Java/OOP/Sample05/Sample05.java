import java.io.*;

public class Sample05
{
    public static void main(String args[]) throws Exception
    {
	Person p[];

	System.out.println("Please input the number of person: ");

	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

	String str = br.readLine();
	int num = Integer.parseInt(str);

	p = new Person[num];

	for(int i=0; i<num; i++) {
	    System.out.println("Please input age: ");
	    str = br.readLine();
	    int age = Integer.parseInt(str);
	    
	    System.out.println("Please input weight: ");
	    str = br.readLine();
	    double weight = Double.parseDouble(str);

	    System.out.println("Please input height: ");
	    str = br.readLine();
	    double height = Double.parseDouble(str);

	    p[i] = new Person(age, weight, height);
	}

	for(int i=0; i<num; i++){
	    p[i].show();
	}
    }
}
