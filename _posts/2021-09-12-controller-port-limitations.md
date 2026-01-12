---
title: Controller Port Limitations
date: 2021-09-12
category: Overview
tags:
- hardware
- controllers
media_subpath: /assets/img/posts/controller-port-limitations/
image:
    path: preview.jpg
    lqip: preview.lqip.jpg
---
Building props that will be powered by a controller like the [Falcon F16][1] is as easy as attaching pixels to a structure, connecting that string to the controller, connecting the controller to power, and boom; you can do the test patterns on the controller!

Well, unless you want to use more than a certain number of pixels in the run, in which case you need to add more power somewhere along the line.

Um, also if you intend to power more pixels per port than the 5A fuse allows.

Or if you just have more pixels than the port can update per cycle.

Let's look at what's going on here.

Light displays like the ones we're building are fairly complicated electrical circuits, and like any circuit, there are limits to their capabilities. For the purposes of this post, we'll be looking at only one of these circuits, one string of lights coming from one port; let's call this a run.

Some of the things which limit a run are the same as with other circuits: fuse(s) on the circuit (there's usually one built into the board per port), wire gauge, and wire length. On the Falcon F16, the ports have a 5A fuse, so we can't pass more current than 5A through this run without blowing the fuse. Wire gauge and length is.... complicated, so we're going to ignore it for the time being.

![Continuous circuit voltage chart](continuous-chart.jpg){: lqip='continuous-chart.lqip.jpg' }
_see?_

For typical LEDs, the amperage of each RGB pixel is approx 60mA, or 0.06A. This suggests that we can run about 83 pixels on each port, after which point we risk blowing the fuse on the board.

This is where things start getting.... weird. If you plugged in a string of 83 pixels and put them to full white (100% brightness to each red, green, and blue pixel), you'll notice that they look fine... up until around pixel 50 or so, at which point, they start taking on a pinkish hue. Virtually nobody would consider the color the 83rd pixel is emitting "white".

The reason for this dimming is because of a phenomenon called voltage drop. As you go down the line, each pixel consumes a little bit of power, which reduces the amount available for each pixel further down the line. This is fine in the beginning as each pixel has more than enough power to work with; a 5V pixel will work fine down to about 4V, for example. After a certain threshold (somewhere around 50 pixels), the pixel is unable to fully power all three LEDs, and thus they each have a lower brightness. There's a bunch of [charts and models][2] you can look at to get a richer understanding, but all you need to know is that this is a thing.

![Pixel Light Power Calculator](spiker-lights.jpg){: lqip='spiker-lights.lqip.jpg' }
_Credit: Spiker Lights_

So that's two limits: how many pixels a port can provide power to (83 or so) and how many pixels with good color rendering a port can drive (50 or so). Let's assume that neither of these is a problem. We'll just avoid physics and say that any number of pixels can be powered without melting the board, and further assume that voltage drop is not a thing. We still will have limits to how many pixels a single port can drive, but this time it's how many can be updated every frame.

"Frame" is an animation term, hearkening back to the French "framêz" which means I'm kidding I did literally zero research into the history of this terminology. I'm pretty sure it's from photography (a photograph is a frame contained by the borders of the photo) and then was adopted by movies, which are just 24 images per second being shown to you to give an illusion of moving pictures. In animation, particularly in computer animation, it's a moment which is frozen in time, where some controller or artist has defined exactly what the display should look like for that very brief moment.

![Genie from Aladdin, standing agape](aladdin-genie-mouth-drop.jpg){: lqip='aladdin-genie-mouth-drop.lqip.jpg' }
_An example of a single frame_

This is how pixel displays work. Many times per second, the controller tells every single pixel what color it should be, waits until the next update time, then tells every single pixel what color it should be again. Frame rate simply means "how many frames are shown over time" and is typically measured in frames per second. Refresh rate is directly related to this, but it typically describes how much time elapses between each refresh (frame) of the display and is typically measured in milliseconds or thousandths of a second. Common frame rates are 20fps and 40fps; the former has a refresh rate of 50ms and the latter has a refresh rate of 25ms.

Back to ports. Each port can only update a certain number of pixels in a given refresh rate time period; this is due to each pixel taking a tiny bit of time to take its portion of the message and pass the rest down the line, the speed of light (how fast the signal moves through the wires to the next pixel), and built-in overhead on the controller to determine what the next frame is going to look like. My controller (Falcon F16V3) can update 1024 pixels per port every frame, but only when running in 20fps; if I want 40fps, I have to drop my pixel count to around 600 pixels since the controller won't be able to keep up.

Fortunately, we can solve for two of these three main limitations. We can't do anything about the maximum number of pixels a single port can update; that's physics and computers and stuff, and it's pretty damn impressive that a controller can update 600 different tiny microcomputers (which is what LED pixels really are) across my front yard 40 times every single second. However, we can fix the much more restrictive limits of 50 pixels and 83 pixels by using power injection, and we'll get into that in an upcoming post.

[1]: https://www.pixelcontroller.com/store/controllers/70-f16v4.html
[2]: https://spikerlights.com/pwrinjection.aspx