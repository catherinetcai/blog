+++
date = 2017-06-28T16:05:23Z
draft = false
title = "TIL: Name your ASG EC2 Instances"
aliases = ["/blog/2017/6/28/til-name-your-asg-ec2-instances"]
categories = ["avsnitt"]
+++

Welp, another couple of months. This one though is attributed to life being insane: new job/vacation/new apartment.
Enough excuses. Learning more Terraform.&nbsp;
Today I learned a bit of a silly one. I was creating a launch configuration that attached to an autoscaling group and noticed that every time I ran it in Terraform that my EC2 instances would come up with no names.
Turns out that you have to use the tag field with key "Name", value of &lt;your name here&gt;, and propagate_at_launch as true in order for the instance names to be propagated correctly. Oops.

