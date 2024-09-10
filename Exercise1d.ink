/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR Seashells = 0
-> seashore

== seashore ==
You are sitting on the beach. 

It is {advance_time()} 

+ [stroll down the beach] -> beach2
* { Seashells == 24 } [go back home] -> home
-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time()} 
* { time  == 1} [Pick up some seashells] -> shells
+ [stroll] -> seashore
+ [head to the ocean] -> ocean
-> DONE

== shells ==
You pick up the shells
{pick_up_seashells()}
-> beach2

== ocean ==
This is the breakline between the beach and ocean. 

It is {advance_time()} 

{time == 0: the morning waves must of brought new  seashells}
* { time == 0} [pick up some seashells] -> more_shells
+ [head back] -> beach2
* { time == 2 } [see the stars] -> stars
-> DONE

== more_shells==
You pick up the newly discovered seashells
{pick_up_seashells()}
-> ocean

== stars ==
the stars shine brightly in the skys
-> ocean

== home ==
You head back home
-> DONE

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
        
    ~ return time

== function pick_up_seashells ==

{
 - Seashells < 24:
~ Seashells = Seashells + 12
}
{
- Seashells == 24:
   ~ return "You have " + Seashells + " seashells. your bucket is full of seashells now."  
}

~ return "You have " + Seashells + " seashells"
    
