public with sharing class Car implements VehicleIF
{
    private Integer gears;
    private Integer currentGear=0;

    public Car(Integer gears) 
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
        if (this.currentGear<this.gears)
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
