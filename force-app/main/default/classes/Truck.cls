public with sharing class Truck implements VehicleIF
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

    public void start()
    {
        this.currentGear=1;
    }

    public Boolean gearUp()
    {
        Boolean changedGearUp=true;
        if (this.currentGear+1<this.gears)
        {
            this.currentGear+=2;
        }
        else if (this.currentGear<this.gears)
        {
            this.currentGear++;
        }
        else
        {
            changedGearUp=false;
        }

        return changedGearUp;
    }

    // decreases the vehicle gear - returns true if the change
    // was successul, false if it is already in first gear
    public Boolean gearDown()
    {
        Boolean changedGearDown=true;
        if (this.currentGear>1)
        {
            this.currentGear--;
        }
        else 
        {
            changedGearDown=false;
        }

        return changedGearDown;
    }

    // takes the vehicle out of gear
    public void stop()
    {
        this.currentGear=0;
    }

}
