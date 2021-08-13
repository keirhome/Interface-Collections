public with sharing class Truck 
{
    Integer gears;
    Integer currentGear=0;

    // when accelerating, trucks can skip gears and move up 
    // two at a time. When decelerating, they will go down one
    // gear at a time

    public Truck(Integer gears) 
    {
        this.gears=gears;
    }
}
