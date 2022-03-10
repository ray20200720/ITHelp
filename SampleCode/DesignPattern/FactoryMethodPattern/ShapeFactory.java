
/**
 * Write a description of class ShapeFactory here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class ShapeFactory
{
    

    /**
     * Constructor for objects of class ShapeFactory
     */
    public ShapeFactory()
    {
       
    }

    /**
     * An example of a method - replace this comment with your own
     *
     * @param  y  a sample parameter for a method
     * @return    the sum of x and y
     */
    public Shape getShape(String shapeType)
    {
        if(shapeType == null) {
            return null;
        }
        
        if(shapeType.equalsIgnoreCase("CIRCLE")){
            return new Circle();
        }
        else if(shapeType.equalsIgnoreCase("RECTANGLE")){
            return new Rectangle();
        }
        else if(shapeType.equalsIgnoreCase("SQUARE")){
            return new Square();
        }
        
        return null;
    }
}
