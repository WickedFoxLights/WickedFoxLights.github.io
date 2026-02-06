---
title: I Stand Corrected
date: 2021-01-23
category: How-to
tags:
- software
- models
- xlights
media_subpath: /assets/img/posts/i-stand-corrected/
image:
    path: preview.jpg
    lqip: preview.lqip.jpg
---

In my post about [model grouping][1], I mentioned that one can have nested groups of models. One might want to do that if there are several groups of one type of model, then another group which has all of that model. I found an issue with how this works and am going to put a big caveat on using nested groups.

For example, on my house, I'm planning to have five stars on my garage and five stars on my house. I would like to be have the option to control them separate to each other, so I have "Stars - Garage" and "Stars - House". However, I also want to control all the stars together, so I want "Stars - All"; that way any time I add a star, I just add it to one group (say, "Stars - House") and anything group that has that group nested (say, "Stars - All" or "House - All") will automatically know about that new model.

However, this has a limitation during sequencing. When you apply effects, there is a "Render Style" option. In this, the default is to use all of the models in the group as a broad canvas onto which to apply the effect.

![group with default](grouped-2.gif)
_Effect applied to a group, "Default" rendering_

However, you also have the option to tell it to apply the effect to each of the models under the group (one such value is "Per Model Default"). This is useful when you want to have, say, the same starburst effect on all the stars without having all the stars on the timeline individually and applying the effect to all of them. I touched on the differences in the model grouping post. The end result is the same as if you'd applied the effects individually, but the same exact effect will be used and kept in sync.

![group with per model default](singles-2.gif)
_Effect applied to a grouop, "Per Model Default" rendering_

The limitation is this: if you have nested groups, the groups which are nested will be rendered as a group instead of the individual models. Here's an example using my "Stars - All" group (hey now, I'm an All Star...). For illustration purposes, I have both individual models and a nested group within this group so you can see the differences.

![group with individual models and nested, default](high-level-group-1.gif)
_Effect applied to a group with individual models and a nested group, "Default" rendering_

This is using the Default rendering on the top-level group. As you can see, the explosion goes out from the middle of the group and passes through all the stars. Let's see what happens when we change the Render Style to Per Model Default.

![group with individual models and nested, per model default](per-model-default-1.gif)
_Effect applied to a group with individual models and a nested group, "Per Model Default" rendering_

That's interesting, right? As you can see, each of the stars on the left bursts within the star itself, while on the right, the burst renders across all five stars. That's because the stars on the left are added to the group individually, whereas the stars on the right are added to the group within a nested group.

So we come to the crux: I am going to go back and, in many cases, change my groups to hold only models. In the long run, it is going to be a bit more maintenance as I add new models, but hopefully that'll be only like once or twice a year. However, with things on which I intend to never use Per Model Default rendering (e.g. my EVERYTHING group), I'll just keep with the nested groups, because damn are they convenient!


[1]: {% post_url 2021-01-02-model-grouping-basics %}