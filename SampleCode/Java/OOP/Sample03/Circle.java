public class Circle
{
    private int x;
    private int y;

    public Circle(int x, int y)
    {
	System.out.println("Produce Circle!");
	this.x = x;
	this.y = y;
    }

    public void show()
    {
	System.out.println("The Circle located at (" + x + "," + y + ")");
    }
}
