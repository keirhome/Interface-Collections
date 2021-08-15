public with sharing class Race 
{
    // choose the appropriate variable type here
    private List<VehicleIF> racers;

    public Race() 
    {
        racers=new List<VehicleIF>();
    }

    public void addRacer(VehicleIF racer)
    {
        racers.add(racer);
    }

    public void start() 
    {
        for (VehicleIF racer : racers)
        {
            racer.start();
        }
    }

    public void flatOut()
    {
        List<VehicleIF> acceleratingRacers=racers.clone();
        List<VehicleIF> toRemove=new List<VehicleIF>();
        while (!acceleratingRacers.isEmpty())
        {
            for (VehicleIF racer : acceleratingRacers)
            {
                if (!racer.gearUp()) 
                { 
                    toRemove.add(racer);
                }
            }

            for (VehicleIF removeRacer : toRemove)
            {
                acceleratingRacers.remove(acceleratingRacers.indexOf(removeRacer));
            }
            toRemove.clear();
        }
    }

    public void finish()
    {
        List<VehicleIF> deceleratingRacers=racers.clone();
        List<VehicleIF> toRemove=new List<VehicleIF>();
        while (!deceleratingRacers.isEmpty())
        {
            for (VehicleIF racer : deceleratingRacers)
            {
                if (!racer.gearDown()) 
                { 
                    toRemove.add(racer);
                }
            }

            for (VehicleIF removeRacer : toRemove)
            {
                deceleratingRacers.remove(deceleratingRacers.indexOf(removeRacer));
            }
            toRemove.clear();
        }

        for (VehicleIF racer : racers)
        {
            racer.stop();
        }
    }
}
