public class Circle extends Shape
{
    /**
     * Constructor for objects of class Circle
     */
    public Circle()
    {
        type = "Circle";
    }

    @Override
    public void draw() {
        System.out.println("Inside Circle::draw() method.");
    }
}
