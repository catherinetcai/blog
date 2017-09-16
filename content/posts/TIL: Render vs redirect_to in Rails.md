+++
date = 2016-03-07T22:35:00Z
draft = false
title = "TIL: Render vs redirect_to in Rails"
aliases = ["/blog/2016/3/8/ji5ofv682tafy9pur111elmw7ax1dq"]
categories = ["avsnitt"]
+++

Render vs redirect_to is one of the finer points of Rails I never really learned about. At my last job, I was pretty much told to use redirect_to whenever possible. I never really sat down to figure why.
I'm working on some legacy code now which involves a lot of renders vs redirect_tos. This [SO](http://stackoverflow.com/questions/7493767/are-redirect-to-and-render-exchangeable)&nbsp;post does a great job explaining the difference.
Essentially, render should be used when you want the same request to be submitted, and redirect_to requests a new form. In a POST request, this is bad to mix up. Hitting refresh on a form will cause the same form to be re-submitted, which might not be what you intended. A redirect_to would be most appropriate. However, if you want a form to render with the same fields filled in, a render works just fine.

