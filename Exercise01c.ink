/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots Y
 - Assign at least TWO new variables through player choices Y
 - Print at least one of the variables to the player in a passage Y
 - Check the value of a variable and have it do something Y

----

VAR health = 5
VAR pet_name = ""
VAR torches = 0

-> memory

== memory ==
Before you stands the cavern of Josh, You wish your childhood pet was with you now. The cave mught be lless intimidating then. What was your pet's name?

* [Charlie] 
    ~ pet_name = "Charlie"
    -> cave_mouth
* [Jimmy] 
    ~ pet_name = "Jimmy"
    -> cave_mouth
* [Roger]
    ~ pet_name = "Roger"
    -> cave_mouth


== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could see you now!

You have {torches} torches



+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west

{pet_name == "Roger": Spot would love it here in the west| }

+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

*/


VAR buddy_name = ""
VAR flashlight = 0

-> start

== start == 
You stand before a massive castle. It is sunny outside, and has a feeling of enchantment. There is nobody around. As you aproach the castle, there are 3 animal companions. Choose one to join you on your adventure!

* [Rainer] 
    ~ buddy_name = "Rainer"
    -> castle_entrance
* [Sparky] 
    ~ buddy_name = "Sparky"
    -> castle_entrance
* [Pyro]
    ~ buddy_name = "Pyro"
    -> castle_entrance

== castle_entrance ==
You are now in the castle, and {buddy_name} is right by you side. The castle does not give off the same enchanted vibes as it did outside. There is a stair case that leads upstairs and a stair case that leads downstairs. { not light_pickup:There is a flashlight laying on the ground.}
You have {flashlight} flashlights.
+ [Go upstairs] -> upstairs
+ [Go downstairs] -> downstairs
* [Pick up the flashlight] -> light_pickup

== upstairs ==
You and {buddy_name} are upstairs. It is too dark to see anything.
You have {flashlight} flashlight
* {flashlight > 0} [Turn on the flashlight] -> upstairs_lit
+ [Go Back] -> castle_entrance
-> END


== downstairs ==
You and {buddy_name} are downstairs. It is too dark to see anything.
You have {flashlight} flashlight
* {flashlight > 0} [Turn on the flashlight] -> downstairs_lit
+ [Go Back] -> castle_entrance
-> END



== light_pickup ==
~ flashlight = flashlight + 1
You now have a flashlight. Does this thing even work?
* [Continue] -> castle_entrance
-> END

== upstairs_lit ==
You and {buddy_name} are upstairs. You start to venture on but {buddy_name} isn't quite so sure. {buddy_name} is biting at your ankles trying to get you to turn around. 
+ [Keep going] -> upstairs_death
+ [Turn around and go back] -> castle_entrance2


== downstairs_lit ==
You and {buddy_name} are downstairs. A glimpse of light down the hall catches your eye.

{ buddy_name == "Rainer": Rainer has a good feeling about this!| }

+ [Follow the light] -> treasure_room
+ [Turn around and go back] -> castle_entrance2


== castle_entrance2 == 
You are back at the entrance of the castle. You can go venture upstairs or venture downstairs.
+ [Go upstairs] -> upstairs_lit
+ [Go downstairs] -> downstairs_lit



== upstairs_death == 
You should have listened to {buddy_name}. You continue on are before you know it you are swarmed by beasts and die.
-> END

== treasure_room == 
You follow the light down the hall to a slightly cracked door. You push it open and boy are you glad you did! The shine of gold and jewels almost blinds you! {buddy_name} seems thrilled too! 
-> END

