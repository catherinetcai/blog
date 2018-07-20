+++
date = 2016-04-21T04:43:00Z
draft = false
title = "TIL - GenServer Callbacks"
aliases = ["/blog/2016/4/21/til-genserver-callbacks"]
categories = ["avsnitt"]
+++

Elixir has six default callback functions for GenServers. I'll try to briefly explain them:
*  - Function starts a new server. Returns { :ok, state } on success or { :stop, reason } if it fails.&nbsp;* - Invoked after GenServer.call(pid, request). From is a tuple containing the PID and a unique tag. The state is the server state. It returns { :reply, result, new_state }.&nbsp;* - Invoked after GenServer.cast(pid, request). A successful response is { :noreply, new_state }. It can return { :stop, reason, new_state }.&nbsp;* - Invoked to handle incoming messages that aren't call or casts. Timeout/termination messages are handled. Messages sent with 'send' will be routed here.* - Called when server will be terminated.* - Replace running server with a new one. This new version of the server may represent state differently.* - Customize state display of server. The conventional response is [data: [{'State', state_info}]].&nbsp;
