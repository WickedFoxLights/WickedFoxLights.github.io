---
title: Anatomy of a Light Display
date: 2021-09-16
category: Overview
tags:
- software
- hardware

media_subpath: /assets/img/posts/anatomy-light-display/

image:
    path: preview.jpg
    lqip: preview.lqip.jpg
---

The [last post][1] was all about controller ports, but didn't get into what a controller is, why you would want one, and how it fits into a light display. Now seems like a decent time to cover that and, more broadly, the various components which you can find in a moderately-sized display. So let's get into it!

To simplify things, you can think of a light display as equivalent to a person playing a piece of music on a piano. Or a person running a play in a sport. Or a person dancing. I play music, so I'm going to stick with the piano metaphor. With that in mind, let's start with the music.


# Composition

![Composing](compose.jpg){: lqip='compose.lqip.jpg' }
_image credits: Cut Common (left), The Joslyn Journey (right)_

At the very beginning, someone composes a song. The song can be simple, or it can be quite complex, but it will take into considerations the limitations of the player and of the instrument and may go through many iterations before it's just right.

This is the sequencing software used to generate the sequence which is later played; xLights is a common program and [has been discussed here before][2]. Taking into consideration the design of the layout, the number of lights, where they are placed, etc., you program them to make patterns animated over time, the end result being a file which can be passed to the next step.

# Instructions

![Instructions](instructions.jpg){: lqip='instructions.lqip.jpg' }
_image credits: Wikimedia Commons (left), smeighan on auschristmaslighting (right)_

Once a song is composed, the composer writes down very detailed instructions on how to play the song, using a notation familiar to musicians; this is known as sheet music. From here, the sheet music can be distributed to musicians who wish to play the song themselves. They may change it a little based on their own interpretation of the song, add their own flair, modify it to match their capabilities and instrumet, but the general idea remains.

When you save a sequence in xLights, you end up with a sequence file which serves the same purpose. This can be distributed to other people who can then use it in their own display. Of course, you can modify the sequence based on differences in display, preferences of colors or timing of patterns, or because you felt like doing something different with the megatree, but the base sequence will remain.

# Translation

![Translation](translate.jpg){: lqip='translate.lqip.jpg' }
_image credits: Elevate Rock School (left), Pixelcontroller.com (right)_

Once a musician has the sheet music, she reads through it to get a better understanding of how to play. While reading it, her eyes and part of her brain are translating the notation which is written on the pages into sounds, intensity, patterns, and chords, and is also starting to get an idea on how to physically play it. When she decides to sit down at the piano, an additional part of her brain starts to tell her fingers, hands, and feet how to move in order to recreate that which is written on the page.

Just as there are two things going on in the brain, so there are two different components in a light display. The first component is a player, probably something like a [Falcon Player][3], which translates the sequence file in the previous stage into some form of meaning. The second component, picks up that meaning and starts telling the lights how to flash. This component is called a controller, and the one I'm using is a [Falcon F4V3][4]. All the lights are plugged into the ports on this controller (or an extension board with differential receivers; kinda like having a brain in each shoulder as well as one in your head) and all the on/off/color change information for every light is distributed from this component.

# Blood and Nerves

![Wires](wires.jpg){: lqip='wires.lqip.jpg' }
_image credits: Prevention.com (left), RIB Functional Devices (right)_

In order for our musician's fingers to move, her muscles need two things: commands on how much and when to flex or relax, and energy to power the muscle's movements. The commands are sent from her brain to her muscles by way of her nerves, and the energy is contained in blood moving through her blood vessels.

Both of these jobs are done by wires in our lighting display. The information about how to light up is sent via data or signal cables which end up connecting to the controller discussed above. For power, DC voltage is needed to make the pixels actually light up. In a smaller display, this can come from the same port in a controller, but is likely to come from a separate power distribution board, which we'll talk about next.

# Power

![power](power.jpg){: lqip='power.lqip.jpg' }
_image credits: Wikipedia (left), Lighthouse LEDs (right)_

In our musician's body, blood takes energy (in the form of glucose) and nutrients around the body, among other things preparing the muscles for activation by signals from the nerves. While many different parts of the body can affect the blood (lungs add oxygen, small intestine adds glucose and nutrients, etc.), the heart gets the credit for pumping the blood all around the body, distributing it to everywhere blood needs to be.

A [power supply][5] and, potentially, a [power distribution board][6] do the work of providing power to the lighting display. While there may only be a port or two used on a controller, we may have many distinct wires from the power distribution to the pixels due to the need to do power injection. The supply, distribution board, and wires are designed together to ensure that enough power gets to all the pixels which need it.

# Performance

![performance](performance.jpg){: lqip='performance.lqip.jpg' }
_image credits: The Guardian (left), Auburn Examiner (right)_

Finally, we are at the point where the audience can appreciate the music our musician is playing. The fingers are controlling the piano, pressing down the correct keys as loud and for as long as the specifications say, creating music which comes out.

Of course, the last part of our lighting display is the most obvious one: the pixels themselves, arranged into shapes or outlines. Using the signal and power which are fed in, they light up different colors tens of times per second, enticing people to stop and watch, to oooo and ahhhh.

# Summary

Like a musician, our lighting display is very complicated, but with a fairly reasonable number of understandable components. Hopefully this has been a helpful view into what goes into a light display and helps take some of the mystery and complexity away.


[1]: {% post_url 2022-12-20-2022-christmas-show-overview %}
[2]: {{ '/tags/software' | relative_url }}
[3]: https://www.falconchristmas.com/wiki/Falcon_FPP
[4]: https://www.pixelcontroller.com/store/controllers/51-f4v2-pixel-controller.html
[5]: https://www.meanwell.com/webapp/product/search.aspx?prod=SE-600
[6]: https://www.pixelcontroller.com/store/accessories/46-f8-distro.html