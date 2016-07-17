# Swap Storyboards

iOS Project demonstrating how to swap a storyboard during interface rotation.

This demo makes use of detecting device rotation via size classes as explained here: 
* http://pinkstone.co.uk/how-to-handle-device-rotation-since-ios-8/

Storyboards can be loaded on a per ViewController basis. The only peculiraity is the first launch scenario: 
to make sure the correct storyboard for the rotation after launch is used, we need the additional code in AppDelegate.


It's currently iPad only - I may add iPhone screen sizes when I find the time.

For yash. Hope this helps :-)
