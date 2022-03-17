public class Square extends Shape
{
    /**
     * Constructor for objects of class Square
     */
    public Square()
    {
        type = "Square";
    }

    @Override
    public void draw() {
        System.out.println("Inside Square::draw() method.");
    }
}
