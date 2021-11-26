package xiaoming;

/**
 * @author 25090
 */
public class Circle implements Shape {
    private double radius;
    static double PI=3.1415926;

    public Circle(double radius) {
        this.radius=radius;
    }


    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    @Override
    public double getArea() {
        return this.radius*this.radius*PI;
    }
}
