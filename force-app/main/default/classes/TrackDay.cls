public with sharing class TrackDay 
{
    private static Race race=new Race();

    public void runRace()
    {
        race.addRacer(new Bicycle(7, 3));
        race.addRacer(new Car(6));
        race.addRacer(new Truck(13));

        race.start();
        race.flatOut();
        race.finish();
    }
}
