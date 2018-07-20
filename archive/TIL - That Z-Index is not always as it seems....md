+++
date = 2016-03-10T23:17:17Z
draft = false
title = "TIL - That Z-Index is not always as it seems..."
aliases = ["/blog/2016/3/10/til-z-index-is-not"]
categories = ["avsnitt"]
+++

I read an [enlightening article](http://philipwalton.com/articles/what-no-one-told-you-about-z-index/) about z-index today. Z-index seemed pretty simple to me: the higher the value, the higher it's position in a stack of elements. Simple.&nbsp;
Nope.
The article above basically explained that z-index essentially functions that way, but there are some weird quirks.&nbsp;
* Z-index only works on elements that aren't statically positioned* Z-index works off of stacking context* WTF is stacking context? - Every stacking context has a root element as the start. These can be formed with the following:* If they're the &lt;html&gt; tag* If element has a z-index that isn't auto and isn't statically positioned* If the element has an opacity less than 1Basically what the rules above mean is that if you're setting your z-index to an obscenely high value and it's still not appearing up front, it's likely that somewhere up the chain, your element's parent has started its own stacking context. Go change that element's z-index or opacity, and it might just do the trick.

