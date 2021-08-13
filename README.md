# Programming Against Interfaces Challenge

## About

This challenge checks your knowledge of Programming Against Interfaces.

The challenge models a simplistic view of a race involving Bicycles, Cars and Trucks,
each of which have different characteristics but a common theme of being able to start, stop and move up and down gears.

You will need to examine each of the classes present in the challenge and decide if they need to implement an interface or not. If a class does need this, you will need to implement each method from the interface in an appropriate fashion based on their characteristics and the comments in the class. 

For classes which do not need to implement an interface, you should follow the instructions in the comments to build out the methods.

## Testing the challenge
You should create the unit tests that you deem appropriate to confirm your solution is working as expected. You may need to make some of the private class properties test visible so that you can confirm the internal state (current gearing) is as expected.

### Scratch Org
If you want to iterate on your development, use a scratch org and the Salesforce CLI force:source:push/pull commands.

### Developer Edition
To deploy to a developer edition, use the source deploy command :
`sfdx force:source:deploy -p force-app -w 10 -u <username>`