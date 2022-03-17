public class Rectangle extends Shape
{
    /**
     * Constructor for objects of class Rectangle
     */
    public Rectangle()
    {
        type = "Rectangle";
    }

    @Override
    public void draw() {
        System.out.println("Inside Rectangle::draw() method.");
    }
}
