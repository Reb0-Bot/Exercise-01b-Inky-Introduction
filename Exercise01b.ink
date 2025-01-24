/*
Narritive for the souls like game "The Promised Knight"
*/

VAR player_name = ""

-> start_path

== start_path == 
Underneath your feet is a paved road made out of precisely placed cobblestone. Your vision limited due to the fog and darkness that engulfs the area around you. The wind slamming against the dense forest roof made of leaves. 
+ [Walk forward] -> path_1

== path_1 == 
You decided to walk down the predesignated path that guides you. 
+ [Continue] -> path_2

== path_2 ==
Eventually as you continue forward you see what looks like a fork in the path and sign in the distance. Once reaching the sign you notice is just says "Right" with an oak wooden arrow pointing towards the right where the paved path continues farther than the fog allows you to see. The fork in the path pulls your eyes towards an overgrown dirt trail on your left. 
* [Go "Right"] -> path_right
+ [Go down the dirt trail] -> path_3

== path_right == 
You decide to continue down the paved road, seems more certain this way.
+ [Continue] -> path_right_2

== path_right_2 == 
As you continue down the road you come across a great amount of fallen trees blocking your path.
* [Go Back] -> path_2

== path_3 ==
Reluctantly you begin your treck down the overgrown trail. Lifting your legs high enough so they dont get caught on any of the vegitation as you walk. 
+ [Continue] -> path_4

== path_4 ==
The forest roof seems to get denser as you continue forward on this trail. You're too far from the start of the trail too turn back now.
+ [Continue] -> path_5

== path_5 == 
As the density of leaves above you increases, the sound of wind grows quieter too. Not just that but your visibility with the lack of moonlight begins to decrease. 
+ [Continue] -> path_6

== path_6 == 
You see a warm burining light very far in the distance from you. Good thing too because with the thick blanket of leaves above you, your vision was almost reduced to darkness.
+ [Continue] -> path_7

== path_7 == 
You look at the light closely and notice that it's getting larger, as if it's coming towards you.
+ [Go towards the light] -> light_towards
+ [Wait for the light to catch up to you] -> light_wait
+ [Run away from the light] -> light_run 

== light_run == 
You have no clue what that light is or why it's getting closer. Instinctually you turn around and sprint away!
+ [Continue] -> light_run_2

== light_run_2 == 
The plant life gets in your way as you push everything around you away as fast and reckless as you can. Looking back though you can see that the light hasn't gotten further away, if anything it's gotten closer and your getting exhausted running like this. 
+ [Continue] -> light_run_3

== light_run_3 ==
It was as if the forest knew you used all your strength running from the light, because you tripped over a tree root, and didn't have enough energy to lift yourself back up in time. You look up only too see a hand reaching out awaiting your grasp. 
+ [Take the hand] ->  merge


== light_wait == 
The light eventually catches up to you and you realize it's a man carrying what looks like an oil lamp. He reaches his hand out to you.
+ [Take the hand] -> merge

== light_towards == 
You continue your treck, towards this light, as it's the only thing you can see in this dense veil of darkness.
+ [Continue] -> light_towards_2 

== light_towards_2 == 
You eventually make your way up to the light and you realize that it's being carried by a man. He reaches his hand out towards you, as if waiting for you to take it.
+ [Take the hand] -> merge

== merge == 
{light_run: The person connected to the hand asks, "That was quite the fall you had there, you gonna be alright?"} {light_wait: The man says, "Sure didn't make it easy on me by waiting, haha!"} "My name's the Light-bearer, and If you'd like the flame can guide our path till we get to the end." His behavior seems welcoming and genuine while he talks to you. 
+ [Agree to follow him] -> bearer_1
* [Continue on your own with no light] -> lost_ending

== lost_ending ==
You decided it was best to continue on your own, even without sight. You didn't know this man anyways, who knows what troubles he could've broughten!

Lost Ending Unlocked
* [Go back] -> merge
* [End Game] -> END

== bearer_1 == 
"Great! It's quite a far walk to the end of this trail, but I actually prefer it to the paved path. Something about the nature here just seems so peaceful."
 + [Continue] -> bearer_2

== bearer_2 == 
The calmness of the forest begins to engulf you now that you can see because of the flame. 
+ [Continue] -> bearer_3

== bearer_3 == 
The two of you continue walking in this serenity, when the lamp-bearer notices an opening in the roof of the forest leaves. He stares up at the full moon and says, "It's been a while since I've seen a moon look that enamoring... Do you care to let an old man ramble for a while?"
+ [Listen to his story] -> story_1
+ [Don't Listen] -> blossom_field_1

== story_1 == 
"There were once two children, a boy and a girl. They were the closest kids in the whole town of Orchard. They would laugh and play all day, but wouldn't dare venture too far from home."
+ [Continue] -> story_2

== story_2==
"See the girl was terrified of getting lost in the woods where the other boys and girls would play. So the boy reassured her that if she were to ever get lost he would go out to find her, even if it meant getting lost himself. The girl strengthened by his words vowed to do the same."
+ [Continue] -> story_3

== story_3 ==
"A few days later a strong storm blew over the town. The boy stayed inside, but the girl did not know this all she knew was her friend wasn't around. So she ran into the forest strengthened by her promise, only to never be seen again..."
+ [Continue] -> blossom_field_1

== blossom_field_1 ==
{story_1: "I promise the story has a happy ending, if are to listen to just a little longer..."| "That's truly a shame as it is quite a beautiful story, as long as you listen to the very end..."} Your eyes are directed towards the moon until it engulfs your entire vision.
+ [Focus your eyes] -> blossom_field_2

== blossom_field_2 ==
As you attempt to focus your eyes you pull your head back, only to notice what was the moon is now the center of a cherry blossom flower.
+ [Look around] -> blossom_field_3

== blossom_field_3 ==
You pan your head around to see your surroundings. Noticing its a hilly field of cherry blossom flowers. Thick enough where you can't even see the ground. Occasionally upon hills there are cherry blossom trees at full bloom. 
+ [Stay put] -> blossom_stay
+ [Roam around] -> blossom_roam

== blossom_stay == 
You decided to sit down and enjoy the landscape. You have no clue where you are and it's not often you get to be in an area as serene as this. 
+ [Continue] -> caretaker_wait

== blossom_roam ==
You decided to see the rest of this tranquil landscape. As you wander around you see a person far off into the distance.
+ [Walk towards them] -> caretaker_1
+ [Don't walk towards them] -> caretaker_wait

== caretaker_wait == 
You feel a hand on your right shoulder. Instinctually you turn around. {blossom_roam: They look just like the person you saw in the distance.}
+ [Continue] -> caretaker_1

== caretaker_1 ==
{not caretaker_wait: You continue your walk towards them and your gazes meet. Before you can let out a word they begin to speak.} They speak calmly towards you, "My name is the Caretaker, I look over this garden, My Garden. What's your name?"
+ [Isaiah] 
~ player_name = "Isaiah" 
-> name
+ [Mary]
~ player_name = "Mary"
-> name
+ [Jacob]
~ player_name = "Jacob"
-> name
+ [Rebecca]
~ player_name = "Rebecca"
-> name
+ [Paul]
~ player_name = "Paul"
-> name

== name == 
"My name is {player_name}, and where am I?" You say this while looking around you, still enamored by the beauty of this place. -> caretaker_2

== caretaker_2 ==
The Caretaker responds, "Like I said this is my Garden, and I called you here because I need your help {player_name}."
+ [Continue] -> caretaker_3

==caretaker_3 == 
"There is an enemy out their, called The Reaper. The Reaper alongside his 7 Generals, threaten the safety of my Garden, as well as the saftey of all my Blossom Children. I am forced to stay here to protect my own. So I have called the strongest warrior to take my flame and relinquish the blight that The Reaper and his Generals threathen to bring." He holds out his hand with a small but powerful flame in it, waitng for you to take it.
+ [Take the flame] -> caretaker_4

== caretaker_4 == 
"Thank you {player_name}, now fight for me and my Blossom Children." He puts his hand on your chest and pushes you back. You begin to fall backwards but just as you hit the ground you wake up in your bed, back in your home town of Orchard.
+ [Collect yourself] -> Orchard_1

== Orchard_1 == 
That dream was incredibly weird, and your having trouble making sense of it. Pushing that aside you pull your blankets off your body only to see the flame the Caretaker gave you in your left hand. 
+ [Continue] -> Orchard_2

== Orchard_2 ==


-> END


