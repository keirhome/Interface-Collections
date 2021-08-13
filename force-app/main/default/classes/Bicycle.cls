public with sharing class Bicycle 
{
    // bikes have front and rear cassettes. 
    // they accelerate by moving up through the rear gears,
    // then simultaneously moving to the next front gear while
    // dropping back to the first rear gear
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
}
