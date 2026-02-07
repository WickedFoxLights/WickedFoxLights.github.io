---
title: Wiring Notes and Design Prep
date: 2021-09-11
category: Overview
tags:
- hardware
- wiring
media_subpath: /assets/img/posts/wiring-notes/
image:
    path: preview.jpg
    lqip: preview.lqip.jpg
---

One thing I've found very helpful when building props is to write down various notes about wiring. Sure, there are going to be some rules or guidelines you should follow (e.g. DC+ goes to DC+, how to manage power injection, etc), but what wire colors are, what connectors you use, whether the male plug is on the incoming side of the prop or on the outgoing, etc. are going to vary based upon your preferences, the types of components you buy, etc.

To add to the difficulty, sometimes this stuff is not very well documented. For example, for the pixel strands I bought there is no documentation as to whether the signal goes from the male plug to the female plug or vice versa; you have to figure it out on your own.

![Messy connections](questionable-connection.jpg){: lqip='questionable-connection.lqip.jpg' }
_What is this questionable connection?_

Thus, writing these things down is incredibly helpful. By doing some preliminary thinking and design work, you can simplify the process of wiring and reduce the possibility of bad wiring quite a lot.

You won't have to go back and figure out what you've already done in order to try and match it. It's annoying to have to get a fully wired and functional prop out of storage to figure out which direction the current is flowing, which direction the plugs should go, etc. Further, if you always use the same practice for wiring things up, your system is more flexible and open to changes without having to rebuild connectors, etc.

At a minimum, these are the things I would write down:

- Which wire colors carry what type of current. Do this for pixel strands, other prewired props which need to be connected, signal cables running from the controllers to the props, and power injection.
- What direction connectors face. I find it easiest to think of this as "incoming" and "outgoing", but it's also commonly referred to as "upstream" and "downstream" (controller/power source is always "outgoing" or "upstream"). As an example, if you buy the [Ray Wu][1] connectors, it's common to wire the female plug (holes instead of prongs) to the [controller connectors][2] which plug into the board. The direction doesn't matter as long as it's consistent.
- Which wires go to which connector poles. This is useful mainly for power injection wires, but it really depends on how in-depth you get with your wiring.

That's seems like very little, but do each of these for each of the wire types and it starts getting to be a bit of info. However, I promise that you will appreciate having this when you go months between building props and have completely forgotten which way everything goes.

For me, it ended up looking something like this:

![Legend](legend.jpg){: lqip='legend.lqip.jpg' }
_Don't worry if you can't read my writing; I'm the only one who need to be able to 😂_

As for that last bit about not connecting DC+ to signal cables? I'll get into that soon when I cover power injection.

[1]: https://www.aliexpress.com/item/32739097740.html
[2]: https://www.pixelcontroller.com/store/products/57-5mm-connectors.html