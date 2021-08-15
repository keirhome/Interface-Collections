public with sharing class Bicycle implements VehicleIF
{
    // bikes have front and rear cassettes. 

    // they accelerate by moving up through the rear gears,
    // then simultaneously moving to the next front gear while
    // dropping back to the first rear gear

    // the decelerate by moving down through the rear gears
    // then simultaneously moving down the front gear while
    // moving to the highest rear gear

    private Integer frontGears;
    private Integer rearGears;

    // bikes cannot be taken out of gear - the chain is always 
    // engaged on a sprocket on the front and rear cassettes
    private Integer currentFrontGear=1;  
    private Integer currentRearGear=1;  

    public Bicycle(Integer frontGears, Integer rearGears) 
    {
        this.frontGears=frontGears;
        this.rearGears=rearGears;
    }
    

    public void start() 
    {
        // bicycle is already in gear
    }

    public Boolean gearUp()
    {
        Boolean changedGearUp=true;
        if (this.currentRearGear<this.rearGears)
        {
            this.currentRearGear++;
        }
        else if (this.currentFrontGear<this.frontGears)
        {
            this.currentFrontGear++;
            this.currentRearGear=1;
        }
        else {
            changedGearUp=false;
        }

        return changedGearUp;
    }

    public Boolean gearDown()
    {
        Boolean changedGearDown=true;
        if (this.currentRearGear>1)
        {
            this.currentRearGear--;
        }
        else if (this.currentFrontGear>1)
        {
            this.currentFrontGear--;
            this.currentRearGear=this.rearGears;
        }
        else {
            changedGearDown=false;
        }

        return changedGearDown;
    }

    // takes the vehicle out of gear
    public void stop()
    {
        // bikes cannot come out of gear
    }

}
