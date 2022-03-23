public class Car
{
    private int number;
    private double gas;

    public Car(int num, double g)
    {
	number = num;
	gas = g;
    }

    public void show()
    {
	System.out.println("The number of Car is " + number + ". And the gas is " + gas);
    }
}
