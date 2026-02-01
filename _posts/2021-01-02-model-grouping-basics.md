---
title: Model Grouping Basics
date: 2021-01-02
# categories are Overview, Show, How-to
category: How-to
tags:
- software
- xlights
media_subpath: /assets/img/posts/model-grouping-basics/
image:
    path: preview.jpg
    lqip: preview.lqip.jpg
---

In one of my [previous posts][1], I briefly mentioned groups when discussing building the models of lights. I wanted to go a bit deeper on this topic now because I think this is a super amazing thing for people who are lazy like I am.

First off, what is grouping? At a high level, the name is right there on the tin: you are grouping your models together with the intention of using them as a single model. Let me give you a simple example.

I'm going to apply a simple Butterfly effect to the stars on my roof in two different modes: individually, and as a group. First, let's see what this effect looks like when we put it on the individual models.

![butterfly effect singles](singles-1.gif)

You get the same effect copied to each of the stars. Makes sense, right?

Now, let's see what it looks like if we group the models and then apply the effect to the group.

![butterfly effect grouped](grouped-1.gif)

Much different, right? The effect has exactly the same settings in both cases, it's just been applied to different models.

Why would I want to do this? Well, when you apply an effect to a group, it has a more cohesive impact on the display. If you don't want to do a great deal of manual manipulation, using groups can drastically cut the complexity (and amount of time) of a sequence. Also, quite often you want all of a type of model to do the same thing at the same time. A very simple example of this would be to have all the stars blinking on the beat.

Now that we've covered the high-level what and why, let's get into the how. Open up xLights and go to the Layout tab. I'm assuming that you've added some models already, but if you haven't, you can go through some of my previous posts to get basic info on how to do this.

I'm going to show you how I put the stars above into a group. First, I highlight the models in the model list on the left. It doesn't matter what order you select them in as everything ends up alphabetical anyway, and you can move things around in the sequencer when we get there.

![xlights grouping 1](xlights-grouping-1.jpg){: lqip="xlights-grouping-1.lqip.jpg" }
_I obviously get points for excellent naming, especially since they're not in order :-). The stars are numbered, left to right, 9, 8, 7, 6, 10_

Right clicking on the selected models will bring up a context menu; since we're creating a new group, we'll choose "Create Group from Selections". If you're adding to a group, then you can use "Add Selections to Existing Group", but I'm not so we're not.

![xlights grouping 2](xlights-grouping-2.jpg){: lqip="xlights-grouping-2.lqip.jpg" }

It'll ask you to enter a name for your group; you can put whatever you want, as long as it doesn't conflict with the name of an existing group or model.

![xlights grouping 3](xlights-grouping-3.jpg){: lqip="xlights-grouping-3.lqip.jpg" }

And now you have a new group! I named mine "House Stars" because I'm creative like that. By default, groups will be at the top of the model list, before any individual models. Also, by default the model list is in alphabetical order, so it'll go A-Z groups, then A-Z models. Keep this in mind if you want to have certain models or groups easily accessible; I've seen people keep commonly-accessed ones at the top by using numbers instead of letters.

![xlights grouping 4](xlights-grouping-4.jpg){: lqip="xlights-grouping-4.lqip.jpg" }

If you click on the arrow/carat icon to the left of the group name, it will expand and show all the models within. You may have noticed that on my stars, there is a carat on the models themselves; these are custom models which have models inside of them. We'll get into that a bit more in the next couple of posts.

If you select the group name, the info panel will have a whole host of new options and selections; I've only just started scratching the surface of this stuff, but the tl;dr is that you can tell the group how to behave as a model.

![xlights grouping 5](xlights-grouping-5.jpg){: lqip="xlights-grouping-5.lqip.jpg" }

The default is to do the behavior I highlighted above; make it seem as if an effect is using all of the models as a single model. However, if you wanted to retain the individual model behavior (say, have a starbust on each model) but not have to apply the same effect to each model individually, you can control that here.

Another interesting thing about grouping is that you can add groups to groups. Coming from a software engineering background, I never like to do the same thing twice. Say I add a new star to my roof stars. Also assume I have several groups which contain my roof stars: Roof Stars, Stars, and Everything (all real groups in my setup). If I make up each of these groups with individual models, I have to remember to add the new star to each of those groups, and I guarantee I will forget to do that.

Enter nested groups. Just as you added models by selecting them, right clicking, and either creating or adding to a group, you can do the same things with groups. By doing this, you can easily build up groups which are automatically updated as you add models to the subgroups contained within.

![xlights grouping 6](xlights-grouping-6.jpg){: lqip="xlights-grouping-6.lqip.jpg" }

If I add a Star11 to House Stars, any effect I have on House Stars, Stars, or EVERYTHING will start incorporating the new element the next time I render; same with any other groups I may have which include House Stars.

To summarize, combining models into groups can make your sequences far less complex, give you a quick route to an impressive display, and provide automatic updating capabilities. Thus, using groups is a very powerful tool and allows you to build more and more impressive sequences, removing much of the frustration you may experience using individual models.

[1]: {% post_url 2021-01-22-starting-a-new-sequence %}