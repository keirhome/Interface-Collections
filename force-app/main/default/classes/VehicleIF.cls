public interface VehicleIF 
{
    // puts the vehicle into first gear
    void start();

    // increases the vehicle gear - returns true if the change
    // was successul, false if there are no more gears 
    Boolean gearUp(Integer num);

    // decreases the vehicle gear - returns true if the change
    // was successul, false if it is already in first gear
    Integer gearDown(Integer num);

    // takes the vehicle out of gear
    void stop();
}
